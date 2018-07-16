.class Lcom/accloud/cloudservice/ACTimerManager$1;
.super Ljava/lang/Object;
.source "ACTimerManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACTimerManager;->addTask(Lcom/accloud/service/ACTimerTask$OP_TYPE;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 69
    iput-object p1, p0, Lcom/accloud/cloudservice/ACTimerManager$1;->this$0:Lcom/accloud/cloudservice/ACTimerManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACTimerManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/accloud/cloudservice/ACTimerManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 95
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 24
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/accloud/cloudservice/ACTimerManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v18, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const-string v23, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 90
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v4, "task"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/accloud/service/ACObject;

    .line 76
    .local v19, "object":Lcom/accloud/service/ACObject;
    const-string v4, "taskId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 77
    .local v5, "taskId":J
    const-string v4, "taskType"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "taskType":Ljava/lang/String;
    const-string v4, "userId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 79
    .local v8, "userId":J
    const-string v4, "nickName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "nickName":Ljava/lang/String;
    const-string v4, "name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "name":Ljava/lang/String;
    const-string v4, "description"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, "description":Ljava/lang/String;
    const-string v4, "timeZone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, "timeZone":Ljava/lang/String;
    const-string v4, "timePoint"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 84
    .local v14, "timePoint":Ljava/lang/String;
    const-string v4, "timeCycle"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, "timeCycle":Ljava/lang/String;
    const-string v4, "createTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 86
    .local v16, "createTime":Ljava/lang/String;
    const-string v4, "modifyTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 87
    .local v17, "modifyTime":Ljava/lang/String;
    const-string v4, "status"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 88
    .local v20, "status":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACTimerManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v22, v0

    new-instance v4, Lcom/accloud/service/ACTimerTask;

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/accloud/service/ACTimerTask;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
