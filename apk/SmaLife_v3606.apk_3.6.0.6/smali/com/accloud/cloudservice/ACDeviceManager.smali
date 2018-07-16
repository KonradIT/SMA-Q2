.class public Lcom/accloud/cloudservice/ACDeviceManager;
.super Ljava/lang/Object;
.source "ACDeviceManager.java"

# interfaces
.implements Lcom/accloud/service/ACDeviceMgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateDevice(Ljava/lang/String;Lcom/accloud/service/ACDeviceActive;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "deviceActive"    # Lcom/accloud/service/ACDeviceActive;
    .param p3, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 11
    invoke-static {p1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 12
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "activateDevice"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 13
    const-string v0, "physicalDeviceId"

    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getPhysicalDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 14
    const-string v0, "devVersion"

    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 15
    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "mac"

    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getModuleVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    const-string v0, "modVersion"

    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getModuleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 19
    :cond_1
    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    const-string v0, "latitude"

    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 21
    :cond_2
    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    const-string v0, "longitude"

    invoke-virtual {p2}, Lcom/accloud/service/ACDeviceActive;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 23
    :cond_3
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-warehouse"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACDeviceManager$1;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACDeviceManager$1;-><init>(Lcom/accloud/cloudservice/ACDeviceManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method

.method public getDeviceInfo(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "subDomain"    # Ljava/lang/String;
    .param p2, "physicalDeviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACDevice;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 79
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 52
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getDeviceInfo"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 53
    const-string v0, "physicalDeviceId"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 54
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-warehouse"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACDeviceManager$2;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACDeviceManager$2;-><init>(Lcom/accloud/cloudservice/ACDeviceManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
