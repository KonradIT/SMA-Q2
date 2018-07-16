.class public Lcom/accloud/cloudservice/ACFeedbackManager;
.super Ljava/lang/Object;
.source "ACFeedbackManager.java"

# interfaces
.implements Lcom/accloud/service/ACFeedbackMgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public submitFeedback(Lcom/accloud/service/ACFeedback;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "feedback"    # Lcom/accloud/service/ACFeedback;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 12
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 38
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/accloud/service/ACFeedback;->getSubDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 17
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "submitFeedback"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/accloud/service/ACFeedback;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/accloud/service/ACFeedback;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 20
    :cond_1
    const-string v0, "extend"

    invoke-virtual {p1}, Lcom/accloud/service/ACFeedback;->getExtend()Lcom/accloud/service/ACObject;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 21
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-feedback"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACFeedbackManager$1;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACFeedbackManager$1;-><init>(Lcom/accloud/cloudservice/ACFeedbackManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
