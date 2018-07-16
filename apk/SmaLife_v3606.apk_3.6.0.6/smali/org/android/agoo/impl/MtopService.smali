.class public final Lorg/android/agoo/impl/MtopService;
.super Ljava/lang/Object;
.source "MtopService.java"

# interfaces
.implements Lorg/android/agoo/IMtopService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getV3(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)Lorg/android/agoo/client/MtopSyncResult;
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 87
    :try_start_0
    new-instance v1, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 88
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/bm;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setSId(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppKey(Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lorg/android/agoo/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppSecret(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/util/Map;)V

    .line 98
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSysParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putSysParams(Ljava/util/Map;)V

    .line 99
    new-instance v2, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    .line 100
    invoke-static {p1}, Lorg/android/agoo/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 101
    invoke-interface {v2, p1, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    new-instance v0, Lorg/android/agoo/client/MtopSyncResult;

    invoke-direct {v0}, Lorg/android/agoo/client/MtopSyncResult;-><init>()V

    .line 104
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/android/agoo/client/MtopSyncResult;->setSuccess(Z)V

    .line 105
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/android/agoo/client/MtopSyncResult;->setData(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getRetDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/android/agoo/client/MtopSyncResult;->setRetDesc(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/client/MtopSyncResult;->setRetCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 111
    new-instance v0, Lorg/android/agoo/client/MtopSyncResult;

    invoke-direct {v0}, Lorg/android/agoo/client/MtopSyncResult;-><init>()V

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/android/agoo/client/MtopSyncResult;->setSuccess(Z)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/client/MtopSyncResult;->setRetDesc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final sendMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)V
    .locals 3

    .prologue
    .line 53
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    :try_start_0
    new-instance v0, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 55
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/bm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setSId(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSysParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putSysParams(Ljava/util/Map;)V

    .line 64
    new-instance v1, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;-><init>()V

    .line 65
    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lorg/android/agoo/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lorg/android/agoo/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lorg/android/agoo/impl/MtopService$2;

    invoke-direct {v2, p0}, Lorg/android/agoo/impl/MtopService$2;-><init>(Lorg/android/agoo/impl/MtopService;)V

    invoke-interface {v1, p1, v0, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;Lorg/android/agoo/net/mtop/MtopResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final sendMtop(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;Lorg/android/agoo/client/MtopProxyResponseHandler;)V
    .locals 3

    .prologue
    .line 19
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 20
    :try_start_0
    new-instance v0, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 21
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/bm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setSId(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/util/Map;)V

    .line 30
    invoke-virtual {p2}, Lorg/android/agoo/client/MtopProxyRequest;->getSysParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putSysParams(Ljava/util/Map;)V

    .line 31
    new-instance v1, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopAsyncClientV3;-><init>()V

    .line 32
    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lorg/android/agoo/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lorg/android/agoo/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 35
    new-instance v2, Lorg/android/agoo/impl/MtopService$1;

    invoke-direct {v2, p0, p3}, Lorg/android/agoo/impl/MtopService$1;-><init>(Lorg/android/agoo/impl/MtopService;Lorg/android/agoo/client/MtopProxyResponseHandler;)V

    invoke-interface {v1, p1, v0, v2}, Lorg/android/agoo/net/mtop/IMtopAsynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;Lorg/android/agoo/net/mtop/MtopResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method
