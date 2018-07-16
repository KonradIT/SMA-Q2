.class public Lcom/accloud/cloudservice/ACOTAManager;
.super Ljava/lang/Object;
.source "ACOTAManager.java"

# interfaces
.implements Lcom/accloud/service/ACOTAMgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUpdate(Ljava/lang/String;Lcom/accloud/service/ACOTACheckInfo;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "checkInfo"    # Lcom/accloud/service/ACOTACheckInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACOTACheckInfo;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACOTAUpgradeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACOTAUpgradeInfo;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 22
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 79
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 31
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "checkUpdate"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getDeviceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 33
    const-string v0, "deviceId"

    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 34
    :cond_2
    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getPhysicalDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    const-string v0, "physicalDeviceId"

    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getPhysicalDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 36
    :cond_3
    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 37
    const-string v0, "version"

    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 38
    :cond_4
    const-string v0, "otaType"

    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getOtaType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 39
    const-string v0, "channel"

    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 40
    const-string v0, "batch"

    invoke-virtual {p2}, Lcom/accloud/service/ACOTACheckInfo;->getBatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 41
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ota"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACOTAManager$1;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACOTAManager$1;-><init>(Lcom/accloud/cloudservice/ACOTAManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public confirmUpdate(Ljava/lang/String;JLjava/lang/String;ILcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "deviceId"    # J
    .param p4, "targetVersion"    # Ljava/lang/String;
    .param p5, "otaType"    # I
    .param p6, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 83
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 113
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 92
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "confirmUpdate"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 93
    const-string v0, "deviceId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 94
    const-string v0, "targetVersion"

    invoke-virtual {v4, v0, p4}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 95
    const-string v0, "otaType"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 96
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ota"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACOTAManager$2;

    invoke-direct {v5, p0, p6}, Lcom/accloud/cloudservice/ACOTAManager$2;-><init>(Lcom/accloud/cloudservice/ACOTAManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public otaMediaDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "physicalDeviceId"    # Ljava/lang/String;
    .param p3, "currentVersion"    # Ljava/lang/String;
    .param p4, "targetVersion"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 117
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 147
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 125
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "otaMediaDone"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 126
    const-string v0, "physicalDeviceId"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 127
    const-string v0, "currentVersion"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 128
    const-string v0, "otaType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 129
    const-string v0, "targetVersion"

    invoke-virtual {v4, v0, p4}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 130
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ota"

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACOTAManager$3;

    invoke-direct {v5, p0, p5}, Lcom/accloud/cloudservice/ACOTAManager$3;-><init>(Lcom/accloud/cloudservice/ACOTAManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
