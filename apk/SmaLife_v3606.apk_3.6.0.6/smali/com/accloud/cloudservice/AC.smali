.class public Lcom/accloud/cloudservice/AC;
.super Ljava/lang/Object;
.source "AC.java"


# static fields
.field public static final CLOUD_FIRST:I = 0x4

.field public static DEVICE_ACTIVATOR_DEFAULT_TIMEOUT:I = 0x0

.field public static final DEVICE_AI6060H:I = 0xb

.field public static final DEVICE_ANDROID:I = -0x1

.field public static final DEVICE_ESP8266:I = 0x9

.field public static final DEVICE_HF:I = 0x1

.field public static final DEVICE_MARVELL:I = 0x3

.field public static final DEVICE_MILL:I = 0xc

.field public static final DEVICE_MTK:I = 0x0

.field public static final DEVICE_MURATA:I = 0x5

.field public static final DEVICE_MX:I = 0x2

.field public static final DEVICE_QCA4004:I = 0x4

.field public static final DEVICE_RAK:I = 0x7

.field public static final DEVICE_REALTEK:I = 0xa

.field public static final DEVICE_TI:I = 0x8

.field public static final DEVICE_WM:I = 0x6

.field public static FIND_DEVICE_DEFAULT_TIMEOUT:I = 0x0

.field public static INIT_APP_DEFAULT_TIMEOUT:I = 0x0

.field public static final LOCAL_FIRST:I = 0x3

.field public static final ONLY_CLOUD:I = 0x2

.field public static final ONLY_LOCAL:I = 0x1

.field public static final PRODUCTION_MODE:I = 0x1

.field public static final REGIONAL_CENTRAL_EUROPE:I = 0x4

.field public static final REGIONAL_CHINA:I = 0x0

.field public static final REGIONAL_EAST_CHINA:I = 0x2

.field public static final REGIONAL_NORTH_AMERICA:I = 0x3

.field public static final REGIONAL_SOUTHEAST_ASIA:I = 0x1

.field public static SEND_TO_LOCAL_DEVICE_DEFAULT_TIMEOUT:I

.field public static final TEST_MODE:I

.field private static accountMgr:Lcom/accloud/service/ACAccountMgr;

.field private static bindMgr:Lcom/accloud/service/ACBindMgr;

.field public static context:Landroid/content/Context;

.field private static deviceMgr:Lcom/accloud/service/ACDeviceMgr;

.field private static feedbackMgr:Lcom/accloud/service/ACFeedbackMgr;

.field private static fileMgr:Lcom/accloud/service/ACFileMgr;

.field private static groupMgr:Lcom/accloud/service/ACGroupMgr;

.field public static majorDomain:Ljava/lang/String;

.field public static majorDomainId:J

.field private static notificationMgr:Lcom/accloud/service/ACNotificationMgr;

.field private static otaMgr:Lcom/accloud/service/ACOTAMgr;

.field private static pushMgr:Lcom/accloud/service/ACPushMgr;

.field private static rankingMgr:Lcom/accloud/service/ACRankingMgr;

.field private static serviceStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACService;",
            ">;"
        }
    .end annotation
.end field

.field private static weatherMgr:Lcom/accloud/service/ACWeatherMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const v0, 0xea60

    sput v0, Lcom/accloud/cloudservice/AC;->DEVICE_ACTIVATOR_DEFAULT_TIMEOUT:I

    .line 59
    const/16 v0, 0xbb8

    sput v0, Lcom/accloud/cloudservice/AC;->FIND_DEVICE_DEFAULT_TIMEOUT:I

    .line 60
    const/16 v0, 0x3e8

    sput v0, Lcom/accloud/cloudservice/AC;->SEND_TO_LOCAL_DEVICE_DEFAULT_TIMEOUT:I

    .line 61
    const/16 v0, 0x7d0

    sput v0, Lcom/accloud/cloudservice/AC;->INIT_APP_DEFAULT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accountMgr()Lcom/accloud/service/ACAccountMgr;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/accloud/cloudservice/AC;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/accloud/cloudservice/ACAccountManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACAccountManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    .line 242
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    return-object v0
.end method

.method public static addServiceStub(Ljava/lang/String;Lcom/accloud/service/ACService;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "stub"    # Lcom/accloud/service/ACService;

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->serviceStubs:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static bindMgr()Lcom/accloud/service/ACBindMgr;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/accloud/cloudservice/AC;->bindMgr:Lcom/accloud/service/ACBindMgr;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/accloud/cloudservice/ACBindManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACBindManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->bindMgr:Lcom/accloud/service/ACBindMgr;

    .line 287
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->bindMgr:Lcom/accloud/service/ACBindMgr;

    return-object v0
.end method

.method public static deviceActivator()Lcom/accloud/cloudservice/ACDeviceActivator;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACDeviceActivator;-><init>()V

    return-object v0
.end method

.method public static deviceActivator(I)Lcom/accloud/cloudservice/ACDeviceActivator;
    .locals 1
    .param p0, "deviceType"    # I

    .prologue
    .line 275
    new-instance v0, Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-direct {v0, p0}, Lcom/accloud/cloudservice/ACDeviceActivator;-><init>(I)V

    return-object v0
.end method

.method public static deviceMgr()Lcom/accloud/service/ACDeviceMgr;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/accloud/cloudservice/AC;->deviceMgr:Lcom/accloud/service/ACDeviceMgr;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/accloud/cloudservice/ACDeviceManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACDeviceManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->deviceMgr:Lcom/accloud/service/ACDeviceMgr;

    .line 298
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->deviceMgr:Lcom/accloud/service/ACDeviceMgr;

    return-object v0
.end method

.method public static feedbackMgr()Lcom/accloud/service/ACFeedbackMgr;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/accloud/cloudservice/AC;->feedbackMgr:Lcom/accloud/service/ACFeedbackMgr;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/accloud/cloudservice/ACFeedbackManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACFeedbackManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->feedbackMgr:Lcom/accloud/service/ACFeedbackMgr;

    .line 255
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->feedbackMgr:Lcom/accloud/service/ACFeedbackMgr;

    return-object v0
.end method

.method public static fileMgr()Lcom/accloud/service/ACFileMgr;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/accloud/cloudservice/AC;->fileMgr:Lcom/accloud/service/ACFileMgr;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/accloud/cloudservice/ACFileManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACFileManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->fileMgr:Lcom/accloud/service/ACFileMgr;

    .line 378
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->fileMgr:Lcom/accloud/service/ACFileMgr;

    return-object v0
.end method

.method public static findLocalDevice(ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 3
    .param p0, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceFind;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACDeviceFind;>;>;"
    invoke-static {}, Lcom/accloud/utils/ACUtils;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p0, p1}, Lcom/accloud/cloudservice/ACDeviceLocalManager;->findDevice(ILcom/accloud/cloudservice/PayloadCallback;)V

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    :cond_1
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_NETWORK_AVAILABLE:I

    const-string v2, "no wifi connect"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0
.end method

.method public static groupMgr()Lcom/accloud/service/ACGroupMgr;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/accloud/cloudservice/AC;->groupMgr:Lcom/accloud/service/ACGroupMgr;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/accloud/cloudservice/ACGroupManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACGroupManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->groupMgr:Lcom/accloud/service/ACGroupMgr;

    .line 310
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->groupMgr:Lcom/accloud/service/ACGroupMgr;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;J)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "MajorDomain"    # Ljava/lang/String;
    .param p2, "MajorDomainId"    # J

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/accloud/cloudservice/AC;->init(Landroid/app/Application;Ljava/lang/String;JI)V

    .line 85
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;JI)V
    .locals 6
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "MajorDomain"    # Ljava/lang/String;
    .param p2, "MajorDomainId"    # J
    .param p4, "mode"    # I

    .prologue
    .line 88
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/accloud/cloudservice/AC;->init(Landroid/app/Application;Ljava/lang/String;JII)V

    .line 89
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;JII)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "MajorDomain"    # Ljava/lang/String;
    .param p2, "MajorDomainId"    # J
    .param p4, "mode"    # I
    .param p5, "regional"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    .line 93
    sput-object p1, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    .line 94
    sput-wide p2, Lcom/accloud/cloudservice/AC;->majorDomainId:J

    .line 96
    invoke-static {p4}, Lcom/accloud/common/ACConfiguration;->setMode(I)V

    .line 97
    invoke-static {p5}, Lcom/accloud/common/ACConfiguration;->setRegional(I)V

    .line 98
    sget v0, Lcom/accloud/cloudservice/AC;->INIT_APP_DEFAULT_TIMEOUT:I

    new-instance v1, Lcom/accloud/cloudservice/AC$1;

    invoke-direct {v1}, Lcom/accloud/cloudservice/AC$1;-><init>()V

    invoke-static {v0, v1}, Lcom/accloud/cloudservice/AC;->findLocalDevice(ILcom/accloud/cloudservice/PayloadCallback;)V

    .line 107
    return-void
.end method

.method public static notificationMgr()Lcom/accloud/service/ACNotificationMgr;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/accloud/cloudservice/AC;->notificationMgr:Lcom/accloud/service/ACNotificationMgr;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/accloud/cloudservice/ACNotificationManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACNotificationManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->notificationMgr:Lcom/accloud/service/ACNotificationMgr;

    .line 322
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->notificationMgr:Lcom/accloud/service/ACNotificationMgr;

    return-object v0
.end method

.method public static otaMgr()Lcom/accloud/service/ACOTAMgr;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/accloud/cloudservice/AC;->otaMgr:Lcom/accloud/service/ACOTAMgr;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/accloud/cloudservice/ACOTAManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACOTAManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->otaMgr:Lcom/accloud/service/ACOTAMgr;

    .line 366
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->otaMgr:Lcom/accloud/service/ACOTAMgr;

    return-object v0
.end method

.method public static pushMgr()Lcom/accloud/service/ACPushMgr;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/accloud/cloudservice/AC;->pushMgr:Lcom/accloud/service/ACPushMgr;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/accloud/cloudservice/ACPushManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACPushManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->pushMgr:Lcom/accloud/service/ACPushMgr;

    .line 334
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->pushMgr:Lcom/accloud/service/ACPushMgr;

    return-object v0
.end method

.method public static rankingMgr()Lcom/accloud/service/ACRankingMgr;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/accloud/cloudservice/AC;->rankingMgr:Lcom/accloud/service/ACRankingMgr;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/accloud/cloudservice/ACRankingManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACRankingManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->rankingMgr:Lcom/accloud/service/ACRankingMgr;

    .line 402
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->rankingMgr:Lcom/accloud/service/ACRankingMgr;

    return-object v0
.end method

.method public static sendToService(Ljava/lang/String;Ljava/lang/String;ILcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 8
    .param p0, "subDomain"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "req"    # Lcom/accloud/service/ACMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/service/ACMsg;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACMsg;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    .line 136
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 171
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v1, "ablecloud_private_userId"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 141
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->NO_LOGIN:I

    const-string v2, "no login"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getMode()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/accloud/cloudservice/AC;->serviceStubs:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 147
    sget-object v0, Lcom/accloud/cloudservice/AC;->serviceStubs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/accloud/service/ACService;

    .line 148
    .local v7, "stub":Lcom/accloud/service/ACService;
    if-eqz v7, :cond_3

    .line 149
    new-instance v6, Lcom/accloud/service/ACMsg;

    invoke-direct {v6}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 150
    .local v6, "resp":Lcom/accloud/service/ACMsg;
    invoke-virtual {v7, p3, v6}, Lcom/accloud/service/ACService;->handleMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/service/ACMsg;)V

    .line 154
    .end local v6    # "resp":Lcom/accloud/service/ACMsg;
    .end local v7    # "stub":Lcom/accloud/service/ACService;
    :cond_3
    invoke-virtual {p3, p0}, Lcom/accloud/service/ACMsg;->setContext(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/AC$2;

    invoke-direct {v5, p4}, Lcom/accloud/cloudservice/AC$2;-><init>(Lcom/accloud/cloudservice/PayloadCallback;)V

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static sendToServiceWithoutSign(Ljava/lang/String;Ljava/lang/String;ILcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 9
    .param p0, "subDomain"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "req"    # Lcom/accloud/service/ACMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/service/ACMsg;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACMsg;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    .line 184
    :cond_0
    new-instance v0, Lcom/accloud/service/ACException;

    sget v1, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    const-string v2, "invalid parameters"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 215
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getMode()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/accloud/cloudservice/AC;->serviceStubs:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 190
    sget-object v0, Lcom/accloud/cloudservice/AC;->serviceStubs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/accloud/service/ACService;

    .line 191
    .local v8, "stub":Lcom/accloud/service/ACService;
    if-eqz v8, :cond_2

    .line 192
    new-instance v7, Lcom/accloud/service/ACMsg;

    invoke-direct {v7}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 193
    .local v7, "resp":Lcom/accloud/service/ACMsg;
    invoke-virtual {v8, p3, v7}, Lcom/accloud/service/ACService;->handleMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/service/ACMsg;)V

    .line 197
    .end local v7    # "resp":Lcom/accloud/service/ACMsg;
    .end local v8    # "stub":Lcom/accloud/service/ACService;
    :cond_2
    new-instance v6, Lcom/accloud/service/ACContext;

    sget-object v0, Lcom/accloud/cloudservice/AC;->majorDomain:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-direct {v6, v0, p0, v2, v3}, Lcom/accloud/service/ACContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 198
    .local v6, "context":Lcom/accloud/service/ACContext;
    const-string v0, "1"

    invoke-virtual {v6, v0}, Lcom/accloud/service/ACContext;->setAccessMode(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3, v6}, Lcom/accloud/service/ACMsg;->setContext(Lcom/accloud/service/ACContext;)V

    .line 200
    new-instance v0, Lcom/accloud/cloudservice/ACServiceClient;

    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRouterAddr()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/accloud/cloudservice/AC$3;

    invoke-direct {v5, p4}, Lcom/accloud/cloudservice/AC$3;-><init>(Lcom/accloud/cloudservice/PayloadCallback;)V

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACServiceClient;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/ACMsgListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/cloudservice/ACServiceClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static setRegional(I)V
    .locals 0
    .param p0, "regional"    # I

    .prologue
    .line 121
    invoke-static {p0}, Lcom/accloud/common/ACConfiguration;->setRegional(I)V

    .line 122
    return-void
.end method

.method public static setRouterAddress(Ljava/lang/String;)V
    .locals 0
    .param p0, "ROUTER_ADDR"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/accloud/common/ACConfiguration;->setRouterAddr(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static timerMgr()Lcom/accloud/service/ACTimerMgr;
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/accloud/cloudservice/ACTimerManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACTimerManager;-><init>()V

    return-object v0
.end method

.method public static timerMgr(Ljava/util/TimeZone;)Lcom/accloud/service/ACTimerMgr;
    .locals 1
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 354
    new-instance v0, Lcom/accloud/cloudservice/ACTimerManager;

    invoke-direct {v0, p0}, Lcom/accloud/cloudservice/ACTimerManager;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static weatherMgr()Lcom/accloud/service/ACWeatherMgr;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/accloud/cloudservice/AC;->weatherMgr:Lcom/accloud/service/ACWeatherMgr;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/accloud/cloudservice/ACWeatherManager;

    invoke-direct {v0}, Lcom/accloud/cloudservice/ACWeatherManager;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/AC;->weatherMgr:Lcom/accloud/service/ACWeatherMgr;

    .line 390
    :cond_0
    sget-object v0, Lcom/accloud/cloudservice/AC;->weatherMgr:Lcom/accloud/service/ACWeatherMgr;

    return-object v0
.end method
