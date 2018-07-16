.class public Lcom/accloud/cloudservice/ACRankingManager;
.super Ljava/lang/Object;
.source "ACRankingManager.java"

# interfaces
.implements Lcom/accloud/service/ACRankingMgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interval"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p6, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACRankingValue;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 111
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 82
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "userGet"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 83
    const-string v0, "name"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 84
    const-string v0, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 85
    const-string v0, "interval"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 86
    const-string v0, "order"

    invoke-virtual {v4, v0, p5}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 88
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ranking"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACRankingManager$3;

    invoke-direct {v5, p0, p6}, Lcom/accloud/cloudservice/ACRankingManager$3;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public inc(Ljava/lang/String;JDLcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "value"    # D
    .param p6, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 45
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 73
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 51
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "userInc"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 52
    const-string v0, "name"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 53
    const-string v0, "value"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 54
    const-string v0, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 56
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ranking"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACRankingManager$2;

    invoke-direct {v5, p0, p6}, Lcom/accloud/cloudservice/ACRankingManager$2;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public rangeCount(Ljava/lang/String;Ljava/lang/String;JDDLcom/accloud/cloudservice/PayloadCallback;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interval"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "start"    # D
    .param p7, "end"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JDD",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRankingCount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p9, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACRankingCount;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/accloud/service/ACException;

    sget v2, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v3, "no login"

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 223
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v5

    .line 197
    .local v5, "req":Lcom/accloud/service/ACMsg;
    const-string v1, "rangeCount"

    invoke-virtual {v5, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 198
    const-string v1, "name"

    invoke-virtual {v5, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 199
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 200
    const-string v1, "interval"

    invoke-virtual {v5, v1, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 201
    const-string v1, "start"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 202
    const-string v1, "end"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 204
    new-instance v1, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v2, "zc-ranking"

    const/4 v3, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/accloud/cloudservice/ACRankingManager$6;

    move-object/from16 v0, p9

    invoke-direct {v6, p0, v0}, Lcom/accloud/cloudservice/ACRankingManager$6;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v1 .. v6}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public ranks(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interval"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "count"    # J
    .param p7, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p8, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p8, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 155
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 120
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "userRanks"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 121
    const-string v0, "name"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 122
    const-string v0, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 123
    const-string v0, "interval"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 124
    const-string v0, "order"

    invoke-virtual {v4, v0, p7}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 125
    const-string v0, "count"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 126
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ranking"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACRankingManager$4;

    invoke-direct {v5, p0, p8}, Lcom/accloud/cloudservice/ACRankingManager$4;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public scan(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interval"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRankingValue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p10, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lcom/accloud/service/ACException;

    sget v2, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v3, "no login"

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p10

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 269
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v5

    .line 232
    .local v5, "req":Lcom/accloud/service/ACMsg;
    const-string v1, "userScan"

    invoke-virtual {v5, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 233
    const-string v1, "name"

    invoke-virtual {v5, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 234
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 235
    const-string v1, "interval"

    invoke-virtual {v5, v1, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 236
    const-string v1, "order"

    move-object/from16 v0, p9

    invoke-virtual {v5, v1, v0}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 237
    const-string v1, "start"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 238
    const-string v1, "end"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 239
    new-instance v1, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v2, "zc-ranking"

    const/4 v3, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/accloud/cloudservice/ACRankingManager$7;

    move-object/from16 v0, p10

    invoke-direct {v6, p0, v0}, Lcom/accloud/cloudservice/ACRankingManager$7;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v1 .. v6}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;JDLcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "value"    # D
    .param p6, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 14
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 42
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 20
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "userInsert"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 21
    const-string v0, "name"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 22
    const-string v0, "value"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 23
    const-string v0, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 25
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ranking"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACRankingManager$1;

    invoke-direct {v5, p0, p6}, Lcom/accloud/cloudservice/ACRankingManager$1;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public totalCount(Ljava/lang/String;Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interval"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRankingCount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p5, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACRankingCount;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 188
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 164
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "totalCount"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 165
    const-string v0, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 166
    const-string v0, "name"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 167
    const-string v0, "interval"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 169
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-ranking"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACRankingManager$5;

    invoke-direct {v5, p0, p5}, Lcom/accloud/cloudservice/ACRankingManager$5;-><init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
