.class public Lcom/accloud/cloudservice/ACAccountManager;
.super Ljava/lang/Object;
.source "ACAccountManager.java"

# interfaces
.implements Lcom/accloud/service/ACAccountMgr;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/accloud/cloudservice/ACAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/accloud/cloudservice/ACAccountManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/accloud/cloudservice/ACAccountManager;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACAccountManager;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/accloud/cloudservice/ACAccountManager;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/accloud/cloudservice/ACAccountManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 675
    return-object v0
.end method


# virtual methods
.method public bindWithAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "nickName"    # Ljava/lang/String;
    .param p5, "verifyCode"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 321
    :cond_2
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 356
    :goto_0
    return-void

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_4

    .line 326
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 330
    :cond_4
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 331
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "bindWithAccount"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 332
    if-eqz p1, :cond_5

    .line 333
    const-string v0, "email"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 334
    :cond_5
    if-eqz p2, :cond_6

    .line 335
    const-string v0, "phone"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 336
    :cond_6
    const-string v0, "password"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 337
    const-string v0, "nickName"

    invoke-virtual {v4, v0, p4}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 338
    const-string v0, "verifyCode"

    invoke-virtual {v4, v0, p5}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 339
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$8;

    invoke-direct {v5, p0, p6}, Lcom/accloud/cloudservice/ACAccountManager$8;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public bindWithOpenId(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "thirdPlatform"    # Lcom/accloud/service/ACThirdPlatform;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 284
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 285
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 316
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 295
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "bindWithOpenId"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 296
    const-string v0, "provider"

    iget-object v1, p1, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 297
    const-string v0, "openId"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 298
    const-string v0, "accessToken"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 299
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$7;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACAccountManager$7;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "verifyCode"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 439
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 469
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 448
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 449
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "changeEmail"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 450
    const-string v0, "email"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 451
    const-string v0, "password"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 452
    const-string v0, "verifyCode"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 453
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$11;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACAccountManager$11;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public changeNickName(Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 474
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 500
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 481
    :cond_1
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 482
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "changeNickName"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 483
    const-string v0, "nickName"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 484
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$12;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACAccountManager$12;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 10
    .param p1, "oldPswd"    # Ljava/lang/String;
    .param p2, "newPswd"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 504
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 548
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 511
    :cond_2
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 512
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    const-string v1, ""

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v3, "ablecloud_private_userId"

    const-wide/16 v8, 0x0

    invoke-static {v2, v3, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 513
    .local v6, "context":Lcom/accloud/service/ACContext;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/accloud/service/ACContext;->setMethodVersion(Ljava/lang/Long;)V

    .line 514
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 515
    const-string v0, "changePassword"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 516
    const-string v0, "old"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 517
    const-string v0, "new"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 518
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$13;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACAccountManager$13;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public changePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "verifyCode"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 405
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 435
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 414
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 415
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "changePhone"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 416
    const-string v0, "phone"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 417
    const-string v0, "password"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 418
    const-string v0, "verifyCode"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 419
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$10;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACAccountManager$10;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public checkExist(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p1, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 136
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 163
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 141
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 142
    .local v6, "context":Lcom/accloud/service/ACContext;
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 143
    const-string v0, "checkExist"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 144
    const-string v0, "account"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 145
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$4;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACAccountManager$4;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public checkVerifyCode(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 80
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 57
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 58
    .local v6, "context":Lcom/accloud/service/ACContext;
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 59
    const-string v0, "checkVerifyCode"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 60
    const-string v0, "account"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 61
    const-string v0, "verifyCode"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 62
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$2;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACAccountManager$2;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getUserProfile(Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACObject;>;"
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 650
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 631
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "getUserProfile"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 632
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$16;

    invoke-direct {v5, p0, p1}, Lcom/accloud/cloudservice/ACAccountManager$16;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 654
    sget-object v4, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v5, "ablecloud_private_fefresh_token_expire"

    invoke-static {v4, v5, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 655
    .local v0, "refreshTokenExpire":J
    sget-object v4, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v5, "ablecloud_private_userId"

    const-wide/16 v6, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 656
    .local v2, "userId":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    cmp-long v4, v0, v8

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 657
    :cond_0
    const/4 v4, 0x1

    .line 658
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public listAllOpenIds(Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACOpenIdInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACOpenIdInfo;>;>;"
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 401
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 365
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "listAllOpenIds"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 366
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$9;

    invoke-direct {v5, p0, p1}, Lcom/accloud/cloudservice/ACAccountManager$9;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACUserInfo;>;"
    const/4 v7, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 209
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 172
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 173
    .local v6, "context":Lcom/accloud/service/ACContext;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/accloud/service/ACContext;->setMethodVersion(Ljava/lang/Long;)V

    .line 174
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 175
    const-string v0, "login"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 176
    const-string v0, "account"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 177
    const-string v0, "password"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 178
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$5;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACAccountManager$5;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loginWithOpenId(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p1, "thirdPlatform"    # Lcom/accloud/service/ACThirdPlatform;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACThirdPlatform;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACUserInfo;>;"
    const/4 v7, 0x0

    .line 237
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 238
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 281
    :goto_0
    return-void

    .line 242
    :cond_1
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 243
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 244
    .local v6, "context":Lcom/accloud/service/ACContext;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/accloud/service/ACContext;->setMethodVersion(Ljava/lang/Long;)V

    .line 245
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 246
    const-string v0, "loginWithOpenId"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 247
    const-string v0, "provider"

    iget-object v1, p1, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 248
    const-string v0, "openId"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 249
    const-string v0, "accessToken"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 250
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$6;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACAccountManager$6;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 663
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_userId"

    invoke-static {v0, v1}, Lcom/accloud/utils/PreferencesUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_token"

    invoke-static {v0, v1}, Lcom/accloud/utils/PreferencesUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_token_expire"

    invoke-static {v0, v1}, Lcom/accloud/utils/PreferencesUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_refresh_token"

    invoke-static {v0, v1}, Lcom/accloud/utils/PreferencesUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_fefresh_token_expire"

    invoke-static {v0, v1}, Lcom/accloud/utils/PreferencesUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_privatedevices_num"

    invoke-static {v0, v1}, Lcom/accloud/utils/PreferencesUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/accloud/cloudservice/AC;->pushMgr()Lcom/accloud/service/ACPushMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACPushMgr;->disconnect()V

    .line 670
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACUserInfo;>;"
    const/4 v7, 0x0

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 85
    :cond_2
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 132
    :goto_0
    return-void

    .line 88
    :cond_3
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 89
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 90
    .local v6, "context":Lcom/accloud/service/ACContext;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/accloud/service/ACContext;->setMethodVersion(Ljava/lang/Long;)V

    .line 91
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 92
    const-string v0, "register"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 93
    if-eqz p1, :cond_4

    .line 94
    const-string v0, "email"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 95
    :cond_4
    if-eqz p2, :cond_5

    .line 96
    const-string v0, "phone"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 97
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 98
    const-string v0, "nickName"

    invoke-virtual {v4, v0, p4}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 99
    :cond_6
    const-string v0, "verifyCode"

    invoke-virtual {v4, v0, p5}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 100
    const-string v0, "password"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 101
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$3;

    invoke-direct {v5, p0, p6}, Lcom/accloud/cloudservice/ACAccountManager$3;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 10
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACUserInfo;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 552
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 596
    :goto_0
    return-void

    .line 556
    :cond_1
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 557
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    const-string v1, ""

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v3, "ablecloud_private_userId"

    const-wide/16 v8, 0x0

    invoke-static {v2, v3, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 558
    .local v6, "context":Lcom/accloud/service/ACContext;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/accloud/service/ACContext;->setMethodVersion(Ljava/lang/Long;)V

    .line 559
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 560
    const-string v0, "resetPassword"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 561
    const-string v0, "account"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 562
    const-string v0, "password"

    invoke-virtual {v4, v0, p2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 563
    const-string v0, "verifyCode"

    invoke-virtual {v4, v0, p3}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 564
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$14;

    invoke-direct {v5, p0, p4}, Lcom/accloud/cloudservice/ACAccountManager$14;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public sendVerifyCode(Ljava/lang/String;ILcom/accloud/cloudservice/VoidCallback;)V
    .locals 8
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "template"    # I
    .param p3, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    const/4 v7, 0x0

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 21
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 48
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v4, Lcom/accloud/service/ACMsg;

    invoke-direct {v4}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 26
    .local v4, "req":Lcom/accloud/service/ACMsg;
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 27
    .local v6, "context":Lcom/accloud/service/ACContext;
    invoke-virtual {v4, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 28
    const-string v0, "sendVerifyCode"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 29
    const-string v0, "account"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 30
    const-string v0, "template"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 31
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$1;

    invoke-direct {v5, p0, p3}, Lcom/accloud/cloudservice/ACAccountManager$1;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 6
    .param p1, "userProfile"    # Lcom/accloud/service/ACObject;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/accloud/cloudservice/ACAccountManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 623
    :goto_0
    return-void

    .line 603
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/accloud/service/ACMsg;->getACMsg(Ljava/lang/String;)Lcom/accloud/service/ACMsg;

    move-result-object v4

    .line 604
    .local v4, "req":Lcom/accloud/service/ACMsg;
    const-string v0, "setUserProfile"

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 605
    const-string v0, "userProfile"

    invoke-virtual {v4, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 606
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    const-string v1, "zc-account"

    const/4 v2, 0x1

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/ACAccountManager$15;

    invoke-direct {v5, p0, p2}, Lcom/accloud/cloudservice/ACAccountManager$15;-><init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/VoidCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateAccessToken()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/accloud/service/ACException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 212
    new-instance v2, Lcom/accloud/service/ACMsg;

    invoke-direct {v2}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 213
    .local v2, "req":Lcom/accloud/service/ACMsg;
    new-instance v0, Lcom/accloud/service/ACContext;

    sget-object v7, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    invoke-direct {v0, v7, v10}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Z)V

    .line 214
    .local v0, "context":Lcom/accloud/service/ACContext;
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/accloud/service/ACContext;->setMethodVersion(Ljava/lang/Long;)V

    .line 215
    invoke-virtual {v2, v0}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 216
    const-string v7, "updateAccessToken"

    invoke-virtual {v2, v7}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 217
    new-instance v4, Lcom/accloud/cloudservice/ACServiceSyncClient;

    const-string v7, "zc-account"

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getHttpsRouterAddr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v10, v8, v2}, Lcom/accloud/cloudservice/ACServiceSyncClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;)V

    .line 220
    .local v4, "syncClient":Lcom/accloud/cloudservice/ACServiceSyncClient;
    invoke-virtual {v4}, Lcom/accloud/cloudservice/ACServiceSyncClient;->postData()Lcom/accloud/service/ACMsg;

    move-result-object v3

    .line 221
    .local v3, "resp":Lcom/accloud/service/ACMsg;
    invoke-virtual {v3}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v7

    if-nez v7, :cond_0

    .line 222
    const-string v7, "token"

    invoke-virtual {v3, v7}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "token":Ljava/lang/String;
    const-string v7, "tokenExpire"

    invoke-virtual {v3, v7}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "tokenExpire":Ljava/lang/String;
    const-string v7, "refreshTokenExpire"

    invoke-virtual {v3, v7}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "refreshTokenExpire":Ljava/lang/String;
    sget-object v7, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_token"

    invoke-static {v7, v8, v5}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    :try_start_0
    sget-object v7, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_token_expire"

    invoke-direct {p0}, Lcom/accloud/cloudservice/ACAccountManager;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 228
    sget-object v7, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v8, "ablecloud_private_fefresh_token_expire"

    invoke-direct {p0}, Lcom/accloud/cloudservice/ACAccountManager;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 232
    .end local v1    # "refreshTokenExpire":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokenExpire":Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/accloud/service/ACException;

    invoke-virtual {v3}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Lcom/accloud/service/ACMsg;->getErrMsg()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 229
    .restart local v1    # "refreshTokenExpire":Ljava/lang/String;
    .restart local v5    # "token":Ljava/lang/String;
    .restart local v6    # "tokenExpire":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method
