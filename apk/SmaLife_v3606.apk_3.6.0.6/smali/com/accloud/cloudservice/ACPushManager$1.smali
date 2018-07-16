.class Lcom/accloud/cloudservice/ACPushManager$1;
.super Landroid/os/Handler;
.source "ACPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/accloud/cloudservice/ACPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACPushManager;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACPushManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/accloud/service/ACException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/accloud/cloudservice/ACPushManager;->disconnect()V

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v21, "onConnect"

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/accloud/cloudservice/ACPushManager;->loginWithSign()V

    goto :goto_0

    .line 58
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v11, v20

    check-cast v11, [B

    .line 59
    .local v11, "message":[B
    new-instance v17, Lcom/accloud/service/ACObject;

    invoke-direct/range {v17 .. v17}, Lcom/accloud/service/ACObject;-><init>()V

    .line 61
    .local v17, "resp":Lcom/accloud/service/ACObject;
    :try_start_0
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshal(Lcom/accloud/service/ACObject;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    const-string v20, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "name":Ljava/lang/String;
    const-string v20, "errCode"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 66
    .local v6, "errCode":J
    const-string v20, "errMsg"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "errMsg":Ljava/lang/String;
    const-string v20, "seqId"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 68
    .local v18, "seqId":J
    const/16 v20, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    .line 70
    :pswitch_3
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_2

    .line 71
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":loginWithSign success"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    goto/16 :goto_0

    .line 68
    :sswitch_0
    const-string v21, "loginWithSign"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x0

    goto :goto_2

    :sswitch_1
    const-string v21, "watch"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1

    goto :goto_2

    :sswitch_2
    const-string v21, "unwatch"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x2

    goto :goto_2

    :sswitch_3
    const-string v21, "rewatch"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x3

    goto :goto_2

    :sswitch_4
    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x4

    goto/16 :goto_2

    .line 74
    :cond_2
    const-wide/16 v20, 0xdbb

    cmp-long v20, v6, v20

    if-nez v20, :cond_3

    .line 75
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":loginWithSign failed["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-->"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v20, Ljava/lang/Thread;

    new-instance v21, Lcom/accloud/cloudservice/ACPushManager$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/accloud/cloudservice/ACPushManager$1$1;-><init>(Lcom/accloud/cloudservice/ACPushManager$1;)V

    invoke-direct/range {v20 .. v21}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 88
    :cond_3
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":loginWithSign failed["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-->"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    move-object/from16 v20, v0

    new-instance v21, Lcom/accloud/service/ACException;

    long-to-int v0, v6

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/accloud/cloudservice/ACPushManager;->disconnect()V

    goto/16 :goto_0

    .line 95
    :pswitch_4
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_5

    .line 96
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":watch success"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 98
    .local v10, "key":I
    int-to-long v0, v10

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-nez v20, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface/range {v20 .. v20}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    goto :goto_3

    .line 103
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":I
    :cond_5
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":watch failed["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-->"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 105
    .restart local v10    # "key":I
    int-to-long v0, v10

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-nez v20, :cond_6

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->watchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/accloud/cloudservice/VoidCallback;

    new-instance v21, Lcom/accloud/service/ACException;

    long-to-int v0, v6

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_4

    .line 112
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":I
    :pswitch_5
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_8

    .line 113
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":unwatch success"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 115
    .restart local v10    # "key":I
    int-to-long v0, v10

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-nez v20, :cond_7

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface/range {v20 .. v20}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    goto :goto_5

    .line 120
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":I
    :cond_8
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":unwatch failed["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-->"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 122
    .restart local v10    # "key":I
    int-to-long v0, v10

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-nez v20, :cond_9

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->unwatchCallbacks:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/accloud/cloudservice/VoidCallback;

    new-instance v21, Lcom/accloud/service/ACException;

    long-to-int v0, v6

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_6

    .line 129
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":I
    :pswitch_6
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":rewatch"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/accloud/service/ACPushTable;

    .line 131
    .local v16, "pushTable":Lcom/accloud/service/ACPushTable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/accloud/cloudservice/ACPushManager$1$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/accloud/cloudservice/ACPushManager$1$2;-><init>(Lcom/accloud/cloudservice/ACPushManager$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACPushManager;->rewatch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V

    goto :goto_7

    .line 145
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "pushTable":Lcom/accloud/service/ACPushTable;
    :pswitch_7
    const-string v20, "payload"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v13

    .line 146
    .local v13, "payload":Lcom/accloud/service/ACObject;
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "receive:\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/accloud/service/ACObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v20, "className"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "className":Ljava/lang/String;
    const-string v20, "opType"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 149
    .local v14, "opType":J
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v5

    .line 150
    .local v5, "data":Lcom/accloud/service/ACObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v20, v0

    new-instance v21, Lcom/accloud/service/ACPushReceive;

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v14, v15, v5}, Lcom/accloud/service/ACPushReceive;-><init>(Ljava/lang/String;JLcom/accloud/service/ACObject;)V

    invoke-interface/range {v20 .. v21}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 156
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "data":Lcom/accloud/service/ACObject;
    .end local v6    # "errCode":J
    .end local v8    # "errMsg":Ljava/lang/String;
    .end local v11    # "message":[B
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "payload":Lcom/accloud/service/ACObject;
    .end local v14    # "opType":J
    .end local v17    # "resp":Lcom/accloud/service/ACObject;
    .end local v18    # "seqId":J
    :pswitch_8
    sget-object v20, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v21, "rewatching"

    invoke-static/range {v20 .. v21}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/accloud/cloudservice/ACPushManager;->access$002(Lcom/accloud/cloudservice/ACPushManager;Z)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager;->connectCallback:Lcom/accloud/cloudservice/VoidCallback;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/accloud/cloudservice/ACPushManager;->connect(Lcom/accloud/cloudservice/VoidCallback;)V

    goto/16 :goto_0

    .line 161
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/accloud/cloudservice/ACPushManager$1$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/accloud/cloudservice/ACPushManager$1$3;-><init>(Lcom/accloud/cloudservice/ACPushManager$1;)V

    invoke-virtual/range {v20 .. v21}, Lcom/accloud/cloudservice/ACPushManager;->connect(Lcom/accloud/cloudservice/VoidCallback;)V

    goto/16 :goto_0

    .line 62
    .restart local v11    # "message":[B
    .restart local v17    # "resp":Lcom/accloud/service/ACObject;
    :catch_0
    move-exception v20

    goto/16 :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x6f5ff5d4 -> :sswitch_0
        -0x1057122a -> :sswitch_2
        0x2eefaa -> :sswitch_4
        0x6bac4cf -> :sswitch_1
        0x419a9e7c -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
