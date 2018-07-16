.class Lcom/accloud/cloudservice/ACTimerManager$6;
.super Ljava/lang/Object;
.source "ACTimerManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACTimerManager;->listTasks(JLcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACTimerManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/accloud/cloudservice/ACTimerManager$6;->this$0:Lcom/accloud/cloudservice/ACTimerManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACTimerManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/accloud/cloudservice/ACTimerManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 306
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 27
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/accloud/cloudservice/ACTimerManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v18, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const-string v26, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 301
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v4, "tasks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 281
    .local v21, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v24, "timerTasks":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACTimerTask;>;"
    if-eqz v21, :cond_1

    .line 283
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/accloud/service/ACObject;

    .line 284
    .local v20, "object":Lcom/accloud/service/ACObject;
    const-string v4, "taskId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 285
    .local v5, "taskId":J
    const-string v4, "taskType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "taskType":Ljava/lang/String;
    const-string v4, "userId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 287
    .local v8, "userId":J
    const-string v4, "nickName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "nickName":Ljava/lang/String;
    const-string v4, "name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "name":Ljava/lang/String;
    const-string v4, "description"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "description":Ljava/lang/String;
    const-string v4, "timeZone"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 291
    .local v13, "timeZone":Ljava/lang/String;
    const-string v4, "timePoint"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 292
    .local v14, "timePoint":Ljava/lang/String;
    const-string v4, "timeCycle"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, "timeCycle":Ljava/lang/String;
    const-string v4, "createTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 294
    .local v16, "createTime":Ljava/lang/String;
    const-string v4, "modifyTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 295
    .local v17, "modifyTime":Ljava/lang/String;
    const-string v4, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 296
    .local v22, "status":J
    new-instance v4, Lcom/accloud/service/ACTimerTask;

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/accloud/service/ACTimerTask;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v5    # "taskId":J
    .end local v7    # "taskType":Ljava/lang/String;
    .end local v8    # "userId":J
    .end local v10    # "nickName":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "description":Ljava/lang/String;
    .end local v13    # "timeZone":Ljava/lang/String;
    .end local v14    # "timePoint":Ljava/lang/String;
    .end local v15    # "timeCycle":Ljava/lang/String;
    .end local v16    # "createTime":Ljava/lang/String;
    .end local v17    # "modifyTime":Ljava/lang/String;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "object":Lcom/accloud/service/ACObject;
    .end local v22    # "status":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/accloud/cloudservice/ACTimerManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
