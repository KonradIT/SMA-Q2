.class public abstract Lorg/android/agoo/client/BaseIntentService;
.super Landroid/app/IntentService;
.source "BaseIntentService.java"

# interfaces
.implements Lorg/android/agoo/callback/IControlCallBack;


# static fields
.field private static final AGOO_COMMAND_LOADUPDATEJAR:Ljava/lang/String; = "loadUpdateJar"

.field private static final TAG:Ljava/lang/String; = "BaseIntentService"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "AgooIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private autoUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/android/Config;->isTimeToUpdate(Landroid/content/Context;J)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->getSwitchConfig(Landroid/content/Context;)V

    .line 134
    invoke-static {p1}, Lorg/android/Config;->isEnableSwitchConfig(Landroid/content/Context;)Z

    move-result v1

    .line 137
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "BaseIntentService"

    const-string v1, "auto update [download]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "org.android.agoo.impl.UpdateService"

    invoke-static {p1, v0}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IUpdateService;

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "\\."

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 152
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object p2, v1, v2

    .line 155
    :cond_2
    const-string v1, "push"

    invoke-interface {v0, p1, v1, p2}, Lorg/android/agoo/IUpdateService;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "BaseIntentService"

    const-string v2, " onHandleIntent---isNeedAutoUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    invoke-static {p1, v0, v1}, Lcom/umeng/message/proguard/bt;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final getSwitchConfig(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 330
    .line 332
    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    const-string v2, "BaseIntentService"

    const-string v3, "auto update [updateSwitchConfig]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v2, "org.android.agoo.impl.MtopService"

    invoke-static {p1, v2}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/android/agoo/IMtopService;

    .line 336
    new-instance v3, Lorg/android/agoo/client/MtopProxyRequest;

    invoke-direct {v3}, Lorg/android/agoo/client/MtopProxyRequest;-><init>()V

    .line 337
    const-string v4, "mtop.wswitch.syncconfiggroup"

    invoke-virtual {v3, v4}, Lorg/android/agoo/client/MtopProxyRequest;->setApi(Ljava/lang/String;)V

    .line 338
    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Lorg/android/agoo/client/MtopProxyRequest;->setV(Ljava/lang/String;)V

    .line 339
    const-string v4, "configName"

    const-string v5, "client_sdk_switch"

    invoke-virtual {v3, v4, v5}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-interface {v2, p1, v3}, Lorg/android/agoo/IMtopService;->getV3(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)Lorg/android/agoo/client/MtopSyncResult;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lorg/android/agoo/client/MtopSyncResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {v2}, Lorg/android/agoo/client/MtopSyncResult;->getData()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 344
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    const-string v2, "autoUpdate"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    const-string v3, "multiplex"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 348
    const-string v3, "spdy"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 349
    const-string v3, "updateCycle"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 351
    const-string v3, "postData"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 354
    const-wide/32 v12, 0x15180

    .line 355
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v3, v8

    .line 358
    :goto_0
    const-string v2, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v4, v8

    .line 361
    :goto_1
    const-string v2, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v5, v8

    .line 364
    :goto_2
    const-string v2, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-eqz v2, :cond_2

    move-wide v6, v10

    :goto_4
    move-object v2, p1

    .line 371
    invoke-static/range {v2 .. v8}, Lorg/android/Config;->set(Landroid/content/Context;ZZZJZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :goto_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/android/Config;->setUpdateTime(Landroid/content/Context;J)V

    .line 391
    :cond_0
    :goto_6
    return-void

    .line 373
    :catch_0
    move-exception v2

    .line 375
    invoke-static {}, Lorg/android/agoo/ut/UTFactroy;->getInstance()Lorg/android/agoo/ut/UTFactroy;

    move-result-object v2

    const-string v3, "updateConfig"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ERROR_EVENT_UPDATECONFIG_ERROR"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lorg/android/agoo/ut/UTFactroy;->commitEvent(Landroid/content/Context;Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_5

    .line 389
    :catch_1
    move-exception v2

    goto :goto_6

    .line 382
    :cond_1
    invoke-static {}, Lorg/android/agoo/ut/UTFactroy;->getInstance()Lorg/android/agoo/ut/UTFactroy;

    move-result-object v3

    const-string v4, "updateConfig"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ERROR_EVENT_UPDATECONFIG_ERROR"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/android/agoo/client/MtopSyncResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, p1, v4, v5}, Lorg/android/agoo/ut/UTFactroy;->commitEvent(Landroid/content/Context;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_2
    move-wide v6, v12

    goto :goto_4

    :cond_3
    move v8, v7

    goto :goto_3

    :cond_4
    move v5, v7

    goto :goto_2

    :cond_5
    move v4, v7

    goto/16 :goto_1

    :cond_6
    move v3, v7

    goto/16 :goto_0
.end method

.method private static reportAutoUpdate(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 259
    .line 261
    if-eqz p0, :cond_2

    .line 262
    :try_start_0
    const-string v0, "BaseIntentService"

    const-string v1, "auto update [reportAutoUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v0, "org.android.agoo.impl.MtopService"

    invoke-static {p0, v0}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IMtopService;

    .line 266
    const-string v1, "push"

    invoke-static {p0, v1}, Lcom/umeng/message/proguard/bt;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "push"

    invoke-static {p0, v2}, Lcom/umeng/message/proguard/bt;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    const-string v3, "push"

    invoke-static {p0, v3}, Lcom/umeng/message/proguard/bt;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    const-string v4, "push"

    invoke-static {p0, v4}, Lcom/umeng/message/proguard/bt;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v5, "push"

    invoke-static {p0, v5}, Lcom/umeng/message/proguard/bt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    new-instance v6, Lorg/android/agoo/client/MtopProxyRequest;

    invoke-direct {v6}, Lorg/android/agoo/client/MtopProxyRequest;-><init>()V

    .line 276
    const-string v7, "mtop.push.device.updateReport"

    invoke-virtual {v6, v7}, Lorg/android/agoo/client/MtopProxyRequest;->setApi(Ljava/lang/String;)V

    .line 277
    const-string v7, "4.0"

    invoke-virtual {v6, v7}, Lorg/android/agoo/client/MtopProxyRequest;->setV(Ljava/lang/String;)V

    .line 278
    const-string v7, "app_version"

    invoke-static {p0}, Lorg/android/Config;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string v7, "sdk_version"

    invoke-static {p0}, Lorg/android/Config;->getAgooReleaseTime(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string v7, "app_pack"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v7, "c0"

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string v7, "c1"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v7, "phoneOsInfo"

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v7, "5"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 287
    :cond_0
    const-string v7, "app_version"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/android/Config;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",netStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    :cond_1
    const-string v7, "currentVersion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",targetVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isUpdateFlag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",deviceId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",ttid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lorg/android/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/android/agoo/client/MtopProxyRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    invoke-interface {v0, p0, v6}, Lorg/android/agoo/IMtopService;->getV3(Landroid/content/Context;Lorg/android/agoo/client/MtopProxyRequest;)Lorg/android/agoo/client/MtopSyncResult;

    move-result-object v6

    .line 300
    const-string v0, "org.android.agoo.impl.ControlService"

    invoke-static {p0, v0}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IControlService;

    .line 302
    const-string v7, "BaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportAutoUpdate result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/android/agoo/client/MtopSyncResult;->isSuccess()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",controlService class="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",currentVersion="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isUpdateFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ttid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/android/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",netStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v6}, Lorg/android/agoo/client/MtopSyncResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    invoke-static {}, Lorg/android/agoo/ut/UTFactroy;->getInstance()Lorg/android/agoo/ut/UTFactroy;

    move-result-object v0

    const-string v1, "reportAutoUpdate"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "reportAutoUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lorg/android/agoo/client/MtopSyncResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lorg/android/agoo/ut/UTFactroy;->commitEvent(Landroid/content/Context;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_2
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v1, "BaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAutoUpdate error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runIntent to receive one message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_1
    const-string v1, "BaseIntentService"

    const-string v2, "runIntentInService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public callAgooService()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "BaseIntentService"

    const-string v2, "callAgooService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final callDeletedMessages(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 252
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "BaseIntentService"

    const-string v2, "callDeletedMessages"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callError["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "BaseIntentService"

    const-string v2, "callError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public callRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public final callRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "BaseIntentService"

    const-string v2, "callRegistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callShouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->shouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "BaseIntentService"

    const-string v2, "callShouldProcessMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final callUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "BaseIntentService"

    const-string v2, "callUnregistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string v1, "BaseIntentService"

    const-string v2, "callUserCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final callUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "BaseIntentService"

    const-string v2, "callUserHandleIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getAgooService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const-string v2, "0"

    .line 71
    const/4 v1, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 74
    invoke-static {v3}, Lorg/android/Config;->isEnableUpdate_ByApp(Landroid/content/Context;)Z

    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    const-string v0, "push"

    invoke-static {v3, v0}, Lcom/umeng/message/proguard/bt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v0, "0"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "push"

    invoke-static {v3, v0}, Lorg/android/du/DuSdk;->getUpdate(Landroid/content/Context;Ljava/lang/String;)Lorg/android/du/Update;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/android/du/Update;->ismLoadclassSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto update setExtrasClassLoader["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/android/du/Update;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Lorg/android/du/Update;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 87
    :cond_0
    const-string v0, "org.android.agoo.impl.ControlService"

    invoke-static {v3, v0}, Lorg/android/agoo/proxy/ProxyFactroy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/IControlService;

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0, v3, p1, p0}, Lorg/android/agoo/IControlService;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v3}, Lorg/android/agoo/intent/IntentUtil;->getAgooCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v4, "loadUpdateJar"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {v3}, Lorg/android/agoo/client/BaseIntentService;->reportAutoUpdate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_2
    if-eqz v1, :cond_3

    .line 107
    invoke-direct {p0, v3, v2}, Lorg/android/agoo/client/BaseIntentService;->autoUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    :cond_3
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    :try_start_1
    const-string v4, "BaseIntentService"

    const-string v5, " onHandleIntent"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz v1, :cond_3

    .line 107
    invoke-direct {p0, v3, v2}, Lorg/android/agoo/client/BaseIntentService;->autoUpdate(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 107
    invoke-direct {p0, v3, v2}, Lorg/android/agoo/client/BaseIntentService;->autoUpdate(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    throw v0
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected onUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected shouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
