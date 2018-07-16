.class public Lcom/accloud/cloudservice/ACTimerManager;
.super Ljava/lang/Object;
.source "ACTimerManager.java"

# interfaces
.implements Lcom/accloud/service/ACTimerMgr;


# instance fields
.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/accloud/cloudservice/ACTimerManager;->timeZone:Ljava/util/TimeZone;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/accloud/cloudservice/ACTimerManager;->timeZone:Ljava/util/TimeZone;

    .line 24
    return-void
.end method


# virtual methods
.method public addTask(Lcom/accloud/service/ACTimerTask$OP_TYPE;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 10
    .param p1, "opType"    # Lcom/accloud/service/ACTimerTask$OP_TYPE;
    .param p2, "deviceId"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "timePoint"    # Ljava/lang/String;
    .param p6, "timeCycle"    # Ljava/lang/String;
    .param p7, "msg"    # Lcom/accloud/service/ACDeviceMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACTimerTask$OP_TYPE;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACDeviceMsg;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACTimerTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p8, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACTimerTask;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 29
    :cond_0
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v4, "invalid parameters"

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 97
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v2, "min"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v4, "timeCycle can not support min in new version"

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string v2, "once"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hour"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "day"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "month"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "year"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "week"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 38
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v4, "timeCycle must be one of \"once/hour/day/month/year/week[0\uff0c1\uff0c2\uff0c3\uff0c4\uff0c5\uff0c6]\""

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v2

    if-nez v2, :cond_4

    .line 42
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v4, "no login"

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 46
    :cond_4
    const-string v2, ""

    invoke-static {v2}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v6

    .line 47
    .local v6, "req":Lcom/accloud/service/ACMsg;
    const-string v2, "addTask"

    invoke-virtual {v6, v2}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 48
    sget-object v2, Lcom/accloud/service/ACTimerTask$OP_TYPE;->CLOUD:Lcom/accloud/service/ACTimerTask$OP_TYPE;

    if-ne p1, v2, :cond_6

    .line 49
    const-string v2, "taskFlag"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 52
    :goto_1
    const-string v2, "deviceId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 53
    const-string v2, "timeZone"

    iget-object v3, p0, Lcom/accloud/cloudservice/ACTimerManager;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 54
    const-string v2, "timePoint"

    invoke-virtual {v6, v2, p5}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 55
    const-string v2, "timeCycle"

    move-object/from16 v0, p6

    invoke-virtual {v6, v2, v0}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 56
    const-string v2, "name"

    invoke-virtual {v6, v2, p4}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 57
    invoke-virtual/range {p7 .. p7}, Lcom/accloud/service/ACDeviceMsg;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 58
    const-string v2, "description"

    invoke-virtual/range {p7 .. p7}, Lcom/accloud/service/ACDeviceMsg;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 59
    :cond_5
    const-string v2, "messageCode"

    invoke-virtual/range {p7 .. p7}, Lcom/accloud/service/ACDeviceMsg;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 61
    invoke-virtual/range {p7 .. p7}, Lcom/accloud/service/ACDeviceMsg;->getContent()[B

    move-result-object v8

    .line 62
    .local v8, "payload":[B
    if-eqz v8, :cond_7

    .line 63
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v3, v8

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->setStreamPayload(Ljava/io/InputStream;I)V

    .line 67
    :goto_2
    new-instance v2, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v3, "zc-timer-task"

    const/4 v4, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/accloud/cloudservice/ACTimerManager$1;

    move-object/from16 v0, p8

    invoke-direct {v7, p0, v0}, Lcom/accloud/cloudservice/ACTimerManager$1;-><init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v2 .. v7}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 51
    .end local v8    # "payload":[B
    :cond_6
    const-string v2, "taskFlag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    goto :goto_1

    .line 65
    .restart local v8    # "payload":[B
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->setStreamPayload(Ljava/io/InputStream;I)V

    goto :goto_2
.end method

.method public closeTask(JJLcom/accloud/cloudservice/VoidCallback;)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "taskId"    # J
    .param p5, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const-wide/16 v2, 0x0

    .line 192
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 222
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 201
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 202
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "stopTask"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 203
    const-string v0, "deviceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 204
    const-string v0, "taskId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 205
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-timer-task"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACTimerManager$4;

    invoke-direct {v5, p0, p5}, Lcom/accloud/cloudservice/ACTimerManager$4;-><init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public deleteTask(JJLcom/accloud/cloudservice/VoidCallback;)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "taskId"    # J
    .param p5, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const-wide/16 v2, 0x0

    .line 226
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 227
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 256
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 236
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "deleteTask"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 237
    const-string v0, "deviceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 238
    const-string v0, "taskId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 239
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-timer-task"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACTimerManager$5;

    invoke-direct {v5, p0, p5}, Lcom/accloud/cloudservice/ACTimerManager$5;-><init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public listTasks(JLcom/accloud/cloudservice/PayloadCallback;)V
    .locals 7
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACTimerTask;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACTimerTask;>;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 261
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 308
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 269
    :cond_1
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 270
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "listTasks"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 271
    const-string v0, "deviceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 272
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-timer-task"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACTimerManager$6;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACTimerManager$6;-><init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public modifyTask(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "taskId"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "timePoint"    # Ljava/lang/String;
    .param p7, "timeCycle"    # Ljava/lang/String;
    .param p8, "msg"    # Lcom/accloud/service/ACDeviceMsg;
    .param p9, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 101
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 102
    :cond_0
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v4, "invalid parameters"

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 154
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v2, "min"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v4, "timeCycle can not support min in new version"

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v2, "once"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hour"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "day"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "month"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "year"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "week"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v4, "timeCycle must be one of \"once/hour/day/month/year/week[0\uff0c1\uff0c2\uff0c3\uff0c4\uff0c5\uff0c6]\""

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    new-instance v2, Lcom/accloud/service/ACException;

    sget v3, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v4, "no login"

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 119
    :cond_4
    const-string v2, ""

    invoke-static {v2}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v6

    .line 120
    .local v6, "req":Lcom/accloud/service/ACMsg;
    const-string v2, "modifyTask"

    invoke-virtual {v6, v2}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 121
    const-string v2, "deviceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 122
    const-string v2, "taskId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 123
    const-string v2, "timeZone"

    iget-object v3, p0, Lcom/accloud/cloudservice/ACTimerManager;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 124
    const-string v2, "timePoint"

    invoke-virtual {v6, v2, p6}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 125
    const-string v2, "timeCycle"

    move-object/from16 v0, p7

    invoke-virtual {v6, v2, v0}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 126
    const-string v2, "name"

    invoke-virtual {v6, v2, p5}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 127
    const-string v2, "messageCode"

    invoke-virtual/range {p8 .. p8}, Lcom/accloud/service/ACDeviceMsg;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 128
    invoke-virtual/range {p8 .. p8}, Lcom/accloud/service/ACDeviceMsg;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 129
    const-string v2, "description"

    invoke-virtual/range {p8 .. p8}, Lcom/accloud/service/ACDeviceMsg;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 131
    :cond_5
    invoke-virtual {v6}, Lcom/accloud/service/ACMsg;->getPayload()[B

    move-result-object v8

    .line 132
    .local v8, "payload":[B
    if-eqz v8, :cond_6

    .line 133
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v3, v8

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->setStreamPayload(Ljava/io/InputStream;I)V

    .line 137
    :goto_1
    new-instance v2, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v3, "zc-timer-task"

    const/4 v4, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/accloud/cloudservice/ACTimerManager$2;

    move-object/from16 v0, p9

    invoke-direct {v7, p0, v0}, Lcom/accloud/cloudservice/ACTimerManager$2;-><init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v2 .. v7}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 135
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/accloud/service/ACMsg;->setStreamPayload(Ljava/io/InputStream;I)V

    goto :goto_1
.end method

.method public openTask(JJLcom/accloud/cloudservice/VoidCallback;)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "taskId"    # J
    .param p5, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const-wide/16 v2, 0x0

    .line 158
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 188
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 168
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "startTask"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 169
    const-string v0, "deviceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 170
    const-string v0, "taskId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 171
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-timer-task"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACTimerManager$3;

    invoke-direct {v5, p0, p5}, Lcom/accloud/cloudservice/ACTimerManager$3;-><init>(Lcom/accloud/cloudservice/ACTimerManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
