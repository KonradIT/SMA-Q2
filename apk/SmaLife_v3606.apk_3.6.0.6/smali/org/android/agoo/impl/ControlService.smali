.class public final Lorg/android/agoo/impl/ControlService;
.super Ljava/lang/Object;
.source "ControlService.java"

# interfaces
.implements Lorg/android/agoo/IControlService;


# static fields
.field private static final a:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field private static final b:Ljava/lang/String; = "HAS_RETTY_REGISTER"

.field private static final c:Ljava/lang/String; = "org.rome.android.ipp.intent.action.PINGA"

.field private static final d:Ljava/lang/String; = "ControlService"

.field private static final e:Ljava/util/Random;

.field private static final f:I = 0x5

.field private static final g:I = 0x2710

.field private static final h:Ljava/lang/String; = "4"

.field private static final j:Lorg/android/agoo/net/mtop/IMtopSynClient;


# instance fields
.field private i:Landroid/content/Context;

.field private final k:Landroid/content/ServiceConnection;

.field private final l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/android/agoo/impl/ControlService;->e:Ljava/util/Random;

    .line 751
    new-instance v0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    sput-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    .line 1285
    new-instance v0, Lorg/android/agoo/impl/ControlService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/ControlService$1;-><init>(Lorg/android/agoo/impl/ControlService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/ControlService;->k:Landroid/content/ServiceConnection;

    .line 1317
    new-instance v0, Lorg/android/agoo/impl/ControlService$2;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/ControlService$2;-><init>(Lorg/android/agoo/impl/ControlService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/ControlService;->l:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    return-object v0
.end method

.method private final a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 311
    .line 313
    :try_start_0
    new-instance v2, Lcom/umeng/message/proguard/aS;

    invoke-direct {v2, p1}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v2}, Lcom/umeng/message/proguard/aS;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 315
    :try_start_1
    invoke-virtual {v2}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 319
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const-string v1, "unknow"

    .line 322
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const-string v0, "unknow"

    .line 325
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 329
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 331
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    const-string v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 712
    :try_start_0
    const-string v0, "register_retry"

    invoke-static {p1, v0}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 718
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 720
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 721
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1101
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/a;->p(Landroid/content/Context;)V

    .line 1105
    invoke-static {p1}, Lorg/android/agoo/impl/ControlService;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 2

    .prologue
    .line 730
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 731
    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v0, p4}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 749
    :goto_0
    return-void

    .line 737
    :cond_0
    invoke-static {p1, v0}, Lorg/android/agoo/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 738
    invoke-static {p1}, Lorg/android/agoo/a;->o(Landroid/content/Context;)V

    .line 739
    invoke-static {p1}, Lorg/android/agoo/a;->u(Landroid/content/Context;)V

    .line 740
    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    invoke-direct {p0, p1}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;)V

    .line 743
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->i(Landroid/content/Context;)V

    .line 744
    invoke-direct {p0, p1, p2, p4}, Lorg/android/agoo/impl/ControlService;->k(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v0, p4}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 747
    const-string v0, "data_parse_error"

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    .line 63
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWake["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[appkey==null,appSecret==null,ttid==null]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    invoke-static {p1}, Lorg/android/agoo/a;->q(Landroid/content/Context;)I

    move-result v1

    .line 71
    const-string v2, "ControlService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRetryRegister begin,retryCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "isRetryRegister="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v1, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-ge v1, v4, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 77
    :cond_3
    invoke-static {p1}, Lcom/umeng/message/proguard/aS;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    const-string v0, "ControlService"

    const-string v1, "connectManager[network connectedOrConnecting failed]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/aP;->b()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v4, "handleWake"

    invoke-direct {v0, v1, v4}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 87
    const-string v4, "currentSudoPack"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 89
    const-string v0, "handleWake"

    invoke-static {p1, v3, v0}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    const-string v5, "handleWake"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    const-string v0, "handleWake"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 817
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 820
    new-instance v1, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 821
    const-string v2, "mtop.push.device.reportKickAss"

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 822
    const-string v2, "4.0"

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 823
    invoke-static {p1}, Lorg/android/agoo/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 825
    const-string v0, "app_version"

    invoke-static {p1}, Lorg/android/agoo/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    const-string v0, "sdk_version"

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    const-string v0, "app_pack"

    invoke-virtual {v1, v0, p4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    const-string v0, "app_replace"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, p1, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v0

    .line 831
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstall--->[result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Lorg/android/agoo/net/mtop/Result;)Z

    .line 834
    :cond_0
    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1120
    invoke-static {p1, p2}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1121
    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 4

    .prologue
    .line 1227
    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 1228
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart---->[currentSudoPack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][currentPack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:[stop]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-direct {p0, v0}, Lorg/android/agoo/impl/ControlService;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableService---->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1235
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/proguard/aC;->a(Landroid/content/Context;)V

    .line 1236
    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1213
    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 1214
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart---->[currentSudoPack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:[start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0, v0}, Lorg/android/agoo/impl/ControlService;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabledService---->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-interface {p4}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aB;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1221
    :cond_0
    invoke-static {p1, p5}, Lcom/umeng/message/proguard/aC;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 6

    .prologue
    .line 680
    :try_start_0
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/callback/IControlCallBack;->callRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 682
    invoke-static {p1}, Lorg/android/agoo/a;->n(Landroid/content/Context;)I

    move-result v1

    .line 683
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    .line 684
    add-int/lit8 v0, v1, 0x1

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lorg/android/agoo/impl/ControlService;->e:Ljava/util/Random;

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 687
    const-string v1, "ControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerfailed retrying--->["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {p1, v0}, Lorg/android/agoo/a;->a(Landroid/content/Context;I)V

    .line 690
    const-string v0, "register_retry"

    invoke-static {p1, v0}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 697
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 699
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const-string v0, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not retrying failed operation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Lorg/android/agoo/net/mtop/Result;Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 924
    const-string v0, "n"

    .line 926
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const-string v2, "y"

    .line 928
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 929
    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "utdid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 942
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 944
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail_reasons="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    const-string v0, "-->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    const-string v0, "-->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    const-string v0, "-->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 955
    const-string v0, "actiontype=register"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 956
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    invoke-static {p1, v2, v0}, Lcom/umeng/message/proguard/aD;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :goto_1
    return-void

    .line 931
    :cond_0
    const-string v2, "n"

    .line 932
    if-eqz p2, :cond_1

    .line 933
    invoke-virtual {p2}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_0

    .line 935
    :cond_1
    const-string v0, "fail_reasons == null"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    const-string v1, "n"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/umeng/message/proguard/aD;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 597
    const-string v0, "n"

    const/4 v0, 0x0

    .line 599
    :try_start_0
    invoke-static {p1}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 600
    if-eqz p2, :cond_0

    .line 601
    const-string v1, "y"

    .line 605
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "utdid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "categries="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentPack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSudoPack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail_reasons="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v1, "actiontype=getNoticeElectionTrace"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 632
    :goto_1
    return-void

    .line 603
    :cond_0
    const-string v1, "n"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v1

    .line 631
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->j(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Lorg/android/agoo/net/mtop/Result;)Z
    .locals 4

    .prologue
    .line 906
    invoke-virtual {p4}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMtopResultFailed---->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 910
    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const-string v1, "error"

    invoke-static {p1, v1}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 914
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    invoke-direct {p0, p1, v1, p3}, Lorg/android/agoo/impl/ControlService;->o(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 917
    const/4 v0, 0x0

    .line 920
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 755
    invoke-static {p1}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-static {p1}, Lorg/android/agoo/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 757
    const-string v3, "error"

    invoke-static {p1, v3}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 759
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    const-string v1, "error"

    const-string v2, "ERROR_APPKEY_NULL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    invoke-direct {p0, p1, v3, p2}, Lorg/android/agoo/impl/ControlService;->o(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 783
    :goto_0
    return v0

    .line 766
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 767
    const-string v1, "error"

    const-string v2, "ERROR_TTID_NULL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    invoke-direct {p0, p1, v3, p2}, Lorg/android/agoo/impl/ControlService;->o(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 773
    :cond_1
    sget-object v2, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v2, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 774
    invoke-static {p1}, Lorg/android/agoo/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lorg/android/agoo/a;->A(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 777
    const-string v1, "error"

    const-string v2, "ERROR_APPSECRET_NULL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 781
    :cond_2
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 782
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-static {p1}, Lorg/android/agoo/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 783
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/android/agoo/service/AgooService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    const/4 v0, 0x1

    .line 1207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lorg/android/agoo/impl/ControlService;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->k:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 787
    const-string v0, "registration"

    invoke-static {p1, v0}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 789
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 791
    return-void
.end method

.method private final b(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 2

    .prologue
    .line 106
    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;)V

    .line 108
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/callback/IControlCallBack;->callMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1253
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    const-string v0, "ControlService"

    const-string v1, "onPingMessage:[currentSudoPack==null][retry election]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1271
    :goto_0
    return-void

    .line 1261
    :cond_0
    :try_start_0
    const-string v1, "ControlService"

    const-string v2, "messageConnection [bind]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1263
    const-string v2, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    invoke-static {p1}, Lorg/android/Config;->getAgooGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->k:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    const-string v1, "ControlService"

    const-string v2, "onPingMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final b(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 3

    .prologue
    .line 1110
    invoke-interface {p2}, Lorg/android/agoo/callback/IControlCallBack;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1112
    invoke-static {p1}, Lorg/android/agoo/a;->t(Landroid/content/Context;)V

    .line 1113
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisableCurrentPack-->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {p1}, Lcom/umeng/message/proguard/aC;->a(Landroid/content/Context;)V

    .line 1117
    return-void
.end method

.method static synthetic c(Lorg/android/agoo/impl/ControlService;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->l:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private final c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1240
    :try_start_0
    invoke-static {p1}, Lorg/android/Config;->getPingMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    const-string v0, "ControlService"

    const-string v1, "ippConnection [bind]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1243
    const-string v1, "org.rome.android.ipp.intent.action.PINGA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->l:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    const-string v1, "ControlService"

    const-string v2, "ippConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final c(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v0, 0x0

    .line 114
    .line 116
    :try_start_0
    const-string v1, "message_source"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_c

    move-result-object v4

    .line 117
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apoll"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 119
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Lorg/android/agoo/net/async/c;

    iget-object v3, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v5, "handleRemoteMessage"

    invoke-direct {v2, v3, v5}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 122
    const-string v5, "currentSudoPack"

    invoke-virtual {v3, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v2, v3}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 124
    const-string v2, "handleRemoteMessage"

    invoke-static {p1, v1, v2}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "handleRemoteMessage"

    invoke-direct {p0, p1, v1}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d

    .line 136
    :cond_0
    :goto_0
    const-string v1, "x_command_type"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    if-eqz v1, :cond_2

    .line 301
    :cond_1
    :goto_1
    return-void

    .line 142
    :cond_2
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    const-string v0, "ControlService"

    const-string v1, "handleRemoteMessage[deviceToken==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_3
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "body"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 151
    :try_start_2
    const-string v2, "trace"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 158
    :goto_2
    :try_start_3
    const-string v2, "task_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 161
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    :try_start_4
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    const-string v6, "21"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b

    .line 172
    :cond_4
    :goto_4
    const-string v0, "ControlService"

    const-string v2, "handleMessage--->[null]"

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p1, v1}, Lcom/umeng/message/proguard/aD;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    move-object v5, v0

    goto :goto_2

    .line 159
    :catch_1
    move-exception v2

    move-object v2, v0

    goto :goto_3

    .line 179
    :cond_5
    :try_start_5
    const-string v0, "encrypted"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v6, "1"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 181
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/bf;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v8

    .line 201
    :goto_5
    :try_start_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    if-eqz v0, :cond_c

    .line 203
    :try_start_7
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    const-string v6, "22"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_6

    .line 207
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a

    .line 212
    :cond_6
    :goto_6
    :try_start_8
    invoke-static {p1, v1, v8}, Lcom/umeng/message/proguard/aD;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 217
    :catch_2
    move-exception v0

    move-object v9, v8

    move-object v8, v0

    .line 219
    :goto_7
    :try_start_9
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    const-string v6, "22"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 222
    if-eqz v0, :cond_7

    .line 223
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 226
    :cond_7
    :goto_8
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt--aesdecrypt["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 184
    :cond_8
    :try_start_a
    const-string v6, "2"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 185
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/bf;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 188
    :cond_9
    const-string v6, "3"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 189
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/bf;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 192
    :cond_a
    const-string v6, "10"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 193
    invoke-static {p1}, Lorg/android/agoo/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/bf;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 196
    :cond_b
    const-string v6, "11"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 197
    invoke-static {p1}, Lorg/android/agoo/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/bf;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    move-result-object v8

    goto/16 :goto_5

    .line 215
    :cond_c
    :try_start_b
    const-string v0, "encrypted"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 216
    const-string v0, "body"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 230
    :try_start_c
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    const/4 v6, 0x0

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 233
    if-eqz v0, :cond_d

    .line 234
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 239
    :cond_d
    :goto_9
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aP;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :try_start_d
    const-string v0, "duplicate"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 247
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 248
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;I)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_e
    :goto_a
    const-string v0, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage--->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {p1, v1}, Lcom/umeng/message/proguard/aD;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    :try_start_e
    const-string v0, "notify"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    move-result v5

    .line 274
    :goto_b
    :try_start_f
    const-string v0, "has_test"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 277
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v10, v5}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_1

    .line 281
    :catch_3
    move-exception v0

    .line 284
    :cond_f
    const-string v0, "time"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 286
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    move-object v2, v8

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    const-string v0, "time"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :catch_4
    move-exception v0

    .line 255
    :try_start_10
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    const-string v6, "23"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 258
    if-eqz v0, :cond_e

    .line 259
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_a

    .line 261
    :catch_5
    move-exception v0

    goto/16 :goto_a

    .line 270
    :catch_6
    move-exception v0

    move v5, v9

    goto :goto_b

    .line 291
    :cond_10
    invoke-static {p1}, Lorg/android/agoo/a;->z(Landroid/content/Context;)J

    move-result-wide v2

    .line 292
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_11

    .line 293
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_30"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v8

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 298
    :cond_11
    invoke-static {p1}, Lcom/umeng/message/proguard/aP;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/aP;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v10, v5}, Lcom/umeng/message/proguard/aP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/callback/IControlCallBack;->callMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 236
    :catch_7
    move-exception v0

    goto/16 :goto_9

    .line 225
    :catch_8
    move-exception v0

    goto/16 :goto_8

    .line 217
    :catch_9
    move-exception v0

    move-object v8, v0

    move-object v9, v3

    goto/16 :goto_7

    .line 209
    :catch_a
    move-exception v0

    goto/16 :goto_6

    .line 169
    :catch_b
    move-exception v0

    goto/16 :goto_4

    .line 133
    :catch_c
    move-exception v1

    move-object v4, v0

    goto/16 :goto_0

    :catch_d
    move-exception v1

    goto/16 :goto_0

    :cond_12
    move-object v8, v3

    goto/16 :goto_5
.end method

.method private static final d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1275
    :try_start_0
    const-string v0, "register"

    invoke-static {p0, v0}, Lorg/android/agoo/intent/IntentUtil;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const-string v1, "HAS_RETTY_REGISTER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1279
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final d(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 4

    .prologue
    .line 341
    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v3, "appMessageSuccess"

    invoke-direct {v1, v2, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 344
    const-string v3, "messageId"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v1, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 346
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/callback/IControlCallBack;->callShouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/a;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]--->[disable]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v3, "appMessageFailed"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    goto :goto_0

    .line 357
    :cond_1
    const-string v0, "local"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    if-eqz v0, :cond_2

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->c(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0
.end method

.method private final e(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const-string v0, "ControlService"

    const-string v1, "handleAddPackage---->[appkey or appSecret ===null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    const-string v0, "ControlService"

    const-string v1, "handleAddPackage---->[devicetoken ===null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/a;->D(Landroid/content/Context;)Lorg/android/agoo/a$a;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    if-ne v0, v1, :cond_2

    .line 379
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aC;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v0, "handleAddPackage"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final f(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 6

    .prologue
    .line 387
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    const-string v0, "ControlService"

    const-string v1, "handleRemovePackage---->[devicetoken ===null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 400
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 406
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemovePackage---->[replacing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 407
    invoke-direct/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;Z)V

    .line 408
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    const-string v0, "handleRemovePackage"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_4
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    const-string v0, "handleRemovePackage"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v4, "handleRemovePackage"

    invoke-direct {v0, v1, v4}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 421
    const-string v4, "currentSudoPack"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 423
    const-string v0, "handleRemovePackage"

    invoke-static {p1, v3, v0}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v5, "handleRemovePackage"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final g(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 6

    .prologue
    .line 431
    const-string v0, "command"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command --->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "registration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/android/agoo/callback/IControlCallBack;->callRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->e(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const-string v1, "unregister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->p(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 440
    :cond_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->o(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 442
    :cond_3
    const-string v1, "register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 443
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->n(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 444
    :cond_4
    const-string v1, "register_retry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 446
    :cond_5
    const-string v1, "command_other_channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 447
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->h(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 448
    :cond_6
    const-string v1, "command_restart_sudo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 454
    const-string v5, "command_restart_sudo"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;)V

    .line 456
    :cond_7
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;)Z

    .line 457
    const-string v0, "ControlService"

    const-string v1, "restartByApp by zhifubao begin....................."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_8
    const-string v1, "command_bind_user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 459
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->k(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 460
    :cond_9
    const-string v1, "command_unbind_user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 461
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->l(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto/16 :goto_0

    .line 462
    :cond_a
    const-string v1, "agoo_command_restart_sudo_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v3, "restartByApp"

    invoke-direct {v0, v2, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 469
    const-string v3, "currentSudoPack"

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {v0, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 471
    const-string v0, "restartByApp"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    const-string v0, "restartByApp"

    invoke-static {p1, v1, v0}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_b
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/callback/IControlCallBack;->callUserCommand(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private final h(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 5

    .prologue
    .line 486
    const-string v0, "channel_android_device_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    const-string v1, "channel_android_device_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 495
    new-instance v3, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v3}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 496
    const-string v4, "mtop.push.device.bind.android"

    invoke-virtual {v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 497
    const-string v4, "5.0"

    invoke-virtual {v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v3, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 499
    const-string v4, "tb_app_device_token"

    invoke-virtual {v3, v4, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string v2, "android_device_token"

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string v0, "android_device_type"

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-static {p1}, Lorg/android/agoo/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 503
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, p1, v3}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    const-string v0, "ControlService"

    const-string v1, "register GCM success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final i(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 515
    const-string v0, "handleElectionResult begin"

    .line 516
    const/4 v2, 0x0

    .line 517
    const/4 v6, 0x0

    .line 518
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 520
    const-string v1, "election_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 523
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 525
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/android/Config;->getAgooGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    :try_start_0
    const-string v0, "eventId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    const-string v0, "ControlService"

    const-string v1, "handleElection---->[devicetoken == null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const-string v7, "handleElectionResult"

    .line 535
    :cond_0
    const-string v6, "isRegistered is failed"

    .line 536
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, p1, v7}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    invoke-static {p1}, Lorg/android/agoo/a;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    const-string v0, "ControlService"

    const-string v1, "handleElection--->[app:disable]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    const-string v7, "handleElectionResult"

    .line 545
    :cond_3
    const-string v6, "currentPack hasDisableApp"

    .line 546
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, p1, v7}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_4
    :try_start_1
    const-string v0, "election_source"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    const-string v1, "election_timeout"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 554
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 560
    invoke-static {p1}, Lorg/android/Config;->hasNoticeElection(Landroid/content/Context;)Z

    move-result v1

    .line 561
    if-eqz v1, :cond_5

    .line 562
    const-string v0, "ControlService"

    const-string v1, "handleElection---->[noticeResult is true, result has came]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_5
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/android/Config;->setNoticeResult(Landroid/content/Context;Z)V

    .line 567
    invoke-static {p1, v10, v11, v0}, Lorg/android/agoo/a;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 569
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v3, "handleElectionResult"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 571
    const-string v3, "currentSudoPack"

    invoke-virtual {v1, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 573
    const-string v0, "handleElectionResult"

    invoke-static {p1, v5, v0}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 575
    const-string v7, "handleElectionResult"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 577
    :cond_6
    const/4 v2, 0x1

    .line 578
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    .line 579
    invoke-direct/range {v2 .. v7}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 590
    :catch_1
    move-exception v0

    move v2, v8

    goto/16 :goto_1

    .line 581
    :cond_7
    :try_start_3
    const-string v6, "currentPack != currentSudoPack"

    .line 582
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {p1}, Lorg/android/agoo/a;->D(Landroid/content/Context;)Lorg/android/agoo/a$a;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    if-eq v0, v1, :cond_1

    .line 587
    invoke-direct {p0, p1, v4, v5, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private final j(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 4

    .prologue
    .line 795
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 798
    new-instance v1, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 799
    const-string v2, "mtop.push.device.unregister"

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 800
    const-string v2, "4.0"

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 801
    invoke-static {p1}, Lorg/android/agoo/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 803
    const-string v0, "app_version"

    invoke-static {p1}, Lorg/android/agoo/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    const-string v0, "sdk_version"

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    const-string v0, "app_pack"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, p1, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v0

    .line 808
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister--->[server result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Lorg/android/agoo/net/mtop/Result;)Z

    .line 812
    :cond_0
    return-void
.end method

.method private final k(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 4

    .prologue
    .line 838
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    invoke-static {p1}, Lorg/android/agoo/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 842
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 843
    new-instance v2, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 844
    const-string v3, "mtop.push.device.bindUser"

    invoke-virtual {v2, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 845
    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v2, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setSId(Ljava/lang/String;)V

    .line 848
    const-string v1, "s_token"

    invoke-virtual {v2, v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    const-string v0, "push_token"

    const-string v1, "ajflajdflajflajflajlfajldfjalfdj"

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, p1, v2}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v1

    .line 851
    const-string v2, "ControlService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBinderUser--->[server result:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    if-eqz v1, :cond_1

    .line 854
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 858
    const-string v2, "push_user_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-static {p1, v0}, Lorg/android/agoo/a;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :cond_0
    :goto_1
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Lorg/android/agoo/net/mtop/Result;)Z

    .line 873
    :cond_1
    return-void

    .line 851
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private final l(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 4

    .prologue
    .line 877
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-static {p1}, Lorg/android/Config;->getPushUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 882
    new-instance v2, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 883
    const-string v3, "mtop.push.device.unBindUser"

    invoke-virtual {v2, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 884
    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v2, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 886
    const-string v1, "push_user_token"

    invoke-virtual {v2, v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    const-string v0, "push_token"

    const-string v1, "ajflajdflajflajflajlfajldfjalfdj"

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 888
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, p1, v2}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v1

    .line 889
    const-string v2, "ControlService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBinderUser--->[server result:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    if-eqz v1, :cond_0

    .line 892
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    invoke-static {p1}, Lorg/android/agoo/a;->y(Landroid/content/Context;)V

    .line 894
    invoke-static {p1}, Lorg/android/agoo/a;->c(Landroid/content/Context;)V

    .line 901
    :cond_0
    :goto_1
    return-void

    .line 889
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 897
    :cond_2
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Lorg/android/agoo/net/mtop/Result;)Z

    goto :goto_1
.end method

.method private final m(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 968
    new-instance v2, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 969
    const-string v0, "mtop.push.device.createAndRegister"

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 970
    const-string v0, "4.0"

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 971
    invoke-static {p1}, Lorg/android/agoo/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 972
    const-string v0, "new_device"

    const-string v3, "true"

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 973
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 974
    const-string v3, "device_global_id"

    invoke-virtual {v2, v3, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    const-string v0, "c0"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 976
    const-string v0, "c1"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 977
    const-string v0, "c2"

    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 978
    const-string v0, "c3"

    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 979
    const-string v0, "c4"

    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    const-string v0, "c5"

    invoke-static {}, Lcom/umeng/message/proguard/bk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 981
    const-string v0, "c6"

    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    const-string v0, "app_version"

    invoke-static {p1}, Lorg/android/agoo/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    const-string v0, "sdk_version"

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    const-string v0, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 986
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 988
    const-string v3, "old_device_id"

    invoke-virtual {v2, v3, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 990
    :cond_0
    const-string v0, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRegister app_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/android/agoo/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    sget-object v0, Lorg/android/agoo/impl/ControlService;->j:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v0, p1, v2}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3ForRegister(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Ljava/util/Map;

    move-result-object v3

    .line 994
    if-eqz v3, :cond_5

    .line 995
    const-string v0, "result"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/net/mtop/Result;

    .line 996
    const-string v1, "requestUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 998
    :goto_0
    if-eqz v0, :cond_4

    .line 1000
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/net/mtop/Result;Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 1002
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getHttpCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/bl;->a(Ljava/util/Map;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1003
    const-string v0, "ControlService"

    const-string v1, "register--->[failed]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_1
    :goto_1
    return-void

    .line 1006
    :cond_2
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1007
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register--->[result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/android/Config;->setAgooReleaseTime(Landroid/content/Context;J)V

    .line 1010
    invoke-virtual {v0}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_1

    .line 1014
    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;Lorg/android/agoo/net/mtop/Result;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1019
    :cond_4
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/net/mtop/Result;Lorg/android/agoo/net/mtop/MtopRequest;Ljava/lang/String;)V

    .line 1020
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v0, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private final n(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegister["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[appkey==null,appSecret==null,ttid==null]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string v0, "HAS_RETTY_REGISTER"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1044
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1045
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRegister["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]--->[deviceToken==null][retty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-static {p1}, Lorg/android/agoo/a;->u(Landroid/content/Context;)V

    .line 1052
    if-nez v0, :cond_1

    .line 1053
    invoke-static {p1}, Lorg/android/agoo/a;->o(Landroid/content/Context;)V

    .line 1055
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/proguard/aA;->a(Landroid/content/Context;)V

    .line 1056
    invoke-direct {p0, p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;)V

    .line 1057
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->m(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-static {p1}, Lorg/android/agoo/a;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1061
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRegister["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]--->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][register timeout][retty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-nez v0, :cond_3

    .line 1065
    invoke-static {p1}, Lorg/android/agoo/a;->o(Landroid/content/Context;)V

    .line 1067
    :cond_3
    invoke-direct {p0, p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;)V

    .line 1068
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->m(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto/16 :goto_0

    .line 1071
    :cond_4
    invoke-static {p1, v3}, Lorg/android/agoo/a;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1072
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegister["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[disable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1077
    :cond_5
    invoke-static {p1}, Lorg/android/agoo/a;->D(Landroid/content/Context;)Lorg/android/agoo/a$a;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    if-ne v0, v1, :cond_6

    .line 1078
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aC;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1082
    :cond_6
    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1084
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooMessageReceiver()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooSystemReceiver()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooRegistrationReceiver()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 1089
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    new-instance v1, Lorg/android/agoo/net/async/c;

    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    const-string v3, "handleRegister"

    invoke-direct {v1, v2, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1091
    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1092
    const-string v3, "currentSudoPack"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    invoke-virtual {v1, v2}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 1094
    const-string v1, "handleRegister"

    invoke-static {p1, v0, v1}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-string v0, "handleRegister"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final o(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 5

    .prologue
    .line 1125
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    const-string v1, "eventId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v2, "ERROR_NEED_ELECTION"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    invoke-direct {p0, p1, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1135
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-static {p1, v1}, Lcom/umeng/message/proguard/aD;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 1138
    invoke-interface {p3, p1, v0}, Lorg/android/agoo/callback/IControlCallBack;->callError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_2
    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1143
    invoke-interface {p3, p1, v0}, Lorg/android/agoo/callback/IControlCallBack;->callError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 1147
    :cond_3
    const-string v1, "ERROR_APPKEY_NULL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ERROR_APPSECRET_NULL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ERROR_TTID_NULL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    :cond_4
    invoke-interface {p3, p1, v0}, Lorg/android/agoo/callback/IControlCallBack;->callError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1152
    const-string v0, "APPKEY_OR_SECRET_IS_NULL"

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aD;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 1153
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0
.end method

.method private final p(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 5

    .prologue
    .line 1160
    const/4 v0, 0x0

    .line 1161
    invoke-static {p1}, Lorg/android/agoo/a;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1164
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1169
    :cond_0
    const-string v0, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUnRegister---->[currentPack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "][currentSudoPack:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:[retryElection]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 1173
    invoke-direct {p0, v0}, Lorg/android/agoo/impl/ControlService;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableService---->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/aB;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1180
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/proguard/aC;->a(Landroid/content/Context;)V

    .line 1181
    const/4 v0, 0x1

    .line 1186
    :cond_2
    invoke-interface {p3}, Lorg/android/agoo/callback/IControlCallBack;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    if-eqz v0, :cond_3

    .line 1189
    const-string v0, "handleUnRegister"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1191
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->j(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 1192
    invoke-static {p1}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-static {p1}, Lorg/android/agoo/a;->o(Landroid/content/Context;)V

    .line 1194
    invoke-static {p1}, Lorg/android/agoo/a;->e(Landroid/content/Context;)V

    .line 1195
    invoke-interface {p3, p1, v0}, Lorg/android/agoo/callback/IControlCallBack;->callUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 1197
    :cond_4
    return-void
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    .locals 3

    .prologue
    .line 640
    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/aK;->a(Landroid/content/Context;)V

    .line 641
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleIntent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 645
    iput-object p1, p0, Lorg/android/agoo/impl/ControlService;->i:Landroid/content/Context;

    .line 646
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {p1}, Lorg/android/agoo/intent/IntentUtil;->getAgooCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->g(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    .line 675
    :goto_0
    return-void

    .line 650
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->f(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    const-string v1, "ControlService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 652
    :cond_1
    :try_start_1
    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->d(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 655
    :cond_2
    const-string v1, "org.agoo.android.intent.action.ELECTION_RESULT_V4"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 657
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->i(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 658
    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 664
    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    invoke-static {p1}, Lorg/android/agoo/a;->r(Landroid/content/Context;)V

    .line 668
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/callback/IControlCallBack;)V

    goto :goto_0

    .line 670
    :cond_6
    const-string v0, "ControlService"

    const-string v1, "handleWake[sms]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
