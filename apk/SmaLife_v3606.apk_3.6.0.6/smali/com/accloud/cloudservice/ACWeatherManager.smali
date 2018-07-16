.class public Lcom/accloud/cloudservice/ACWeatherManager;
.super Ljava/lang/Object;
.source "ACWeatherManager.java"

# interfaces
.implements Lcom/accloud/service/ACWeatherMgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastDaysAqi(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACAQI;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACAQI;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 220
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 191
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLastDaysAqi"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 192
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 193
    const-string v0, "days"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 194
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$5;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACWeatherManager$5;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLastDaysPM25(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACPM25;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACPM25;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 108
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 79
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLastDaysPM25Data"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 80
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 81
    const-string v0, "days"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 82
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$2;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACWeatherManager$2;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLastDaysWeather(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACWeather;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACWeather;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 337
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 305
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLastDaysWeatherData"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 306
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 307
    const-string v0, "days"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 308
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$8;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACWeatherManager$8;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLastHoursAqi(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACAQI;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACAQI;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 259
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 230
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLastHoursAqi"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 231
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 232
    const-string v0, "hours"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 233
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$6;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACWeatherManager$6;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLastHoursPM25(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACPM25;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACPM25;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 148
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 118
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLastHoursPM25Data"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 119
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 120
    const-string v0, "hours"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 121
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$3;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACWeatherManager$3;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLastHoursWeather(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACWeather;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACWeather;>;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 379
    :goto_0
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 347
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLastHoursWeatherData"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 348
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 349
    const-string v0, "hours"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 350
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$9;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACWeatherManager$9;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLatestAqi(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACAQI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACAQI;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 181
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 158
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLatestAqi"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 159
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 160
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$4;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACWeatherManager$4;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLatestPM25(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACPM25;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACPM25;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 46
    :goto_0
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 23
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLatestPM25Data"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 24
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 25
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$1;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACWeatherManager$1;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLatestWeather(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "area"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACWeather;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACWeather;>;"
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACAccountMgr;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 295
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 269
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getLatestWeatherData"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 270
    const-string v0, "area"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 271
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-pm25"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACWeatherManager$7;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACWeatherManager$7;-><init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
