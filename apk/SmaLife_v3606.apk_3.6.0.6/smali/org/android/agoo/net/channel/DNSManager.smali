.class Lorg/android/agoo/net/channel/DNSManager;
.super Ljava/lang/Object;
.source "DNSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/net/channel/DNSManager$1;,
        Lorg/android/agoo/net/channel/DNSManager$IHostHandler;,
        Lorg/android/agoo/net/channel/DNSManager$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "agoo_dns_errorid"

.field public static final b:Ljava/lang/String; = "agoo_dns_path"

.field public static final c:Ljava/lang/String; = "agoo_dns_eventid"

.field private static final d:Ljava/lang/String; = "DNSManager"

.field private static final e:Ljava/lang/String; = "AGOO_HOST"

.field private static final f:Ljava/lang/String; = "AGOO_HOST_SIZE"

.field private static final g:Ljava/lang/String; = "AGOO_HOST_TYPE"

.field private static final h:Ljava/lang/String; = "AGOO_HOST_VALUE_"

.field private static final i:Ljava/lang/String; = "spdy"

.field private static final j:Ljava/lang/String; = "off"


# instance fields
.field private volatile A:D

.field private volatile B:D

.field private volatile C:Lcom/umeng/message/proguard/aT;

.field private volatile D:Lorg/android/agoo/net/async/SyncHttpClient;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Ljava/lang/String;

.field private volatile o:Ljava/lang/String;

.field private volatile p:Ljava/lang/String;

.field private volatile q:Ljava/lang/String;

.field private volatile r:I

.field private volatile s:J

.field private volatile t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

.field private volatile u:Lorg/android/agoo/net/channel/ChannelType;

.field private volatile v:Lorg/android/agoo/net/channel/ChannelType;

.field private volatile w:Landroid/content/Context;

.field private volatile x:I

.field private volatile y:Z

.field private volatile z:Lorg/android/agoo/net/channel/DNSManager$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/net/channel/DNSManager;->r:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/net/channel/DNSManager;->s:J

    .line 50
    iput-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    .line 51
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->u:Lorg/android/agoo/net/channel/ChannelType;

    .line 52
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    .line 53
    iput-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    .line 55
    iput v3, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I

    .line 56
    iput-boolean v3, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    .line 57
    iput-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->z:Lorg/android/agoo/net/channel/DNSManager$a;

    .line 59
    iput-wide v4, p0, Lorg/android/agoo/net/channel/DNSManager;->A:D

    .line 60
    iput-wide v4, p0, Lorg/android/agoo/net/channel/DNSManager;->B:D

    .line 67
    iput-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->C:Lcom/umeng/message/proguard/aT;

    .line 207
    iput-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->D:Lorg/android/agoo/net/async/SyncHttpClient;

    .line 72
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    .line 73
    new-instance v0, Lorg/android/agoo/net/async/SyncHttpClient;

    invoke-direct {v0}, Lorg/android/agoo/net/async/SyncHttpClient;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->D:Lorg/android/agoo/net/async/SyncHttpClient;

    .line 74
    new-instance v0, Lorg/android/agoo/net/channel/DNSManager$a;

    invoke-direct {v0, p0}, Lorg/android/agoo/net/channel/DNSManager$a;-><init>(Lorg/android/agoo/net/channel/DNSManager;)V

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->z:Lorg/android/agoo/net/channel/DNSManager$a;

    .line 75
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->u:Lorg/android/agoo/net/channel/ChannelType;

    .line 76
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    .line 78
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 533
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_0
    const-string v0, "china_mobile"

    .line 541
    :goto_0
    return-object v0

    .line 535
    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    const-string v0, "china_unicom"

    goto :goto_0

    .line 537
    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    const-string v0, "china_telecom"

    goto :goto_0

    .line 541
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 445
    .line 447
    :try_start_0
    const-string v0, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    const-string v2, "AGOO_CONNECT_HOST"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    const-string v3, "AGOO_CONNECT_PORT"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 451
    new-instance v0, Lcom/umeng/message/proguard/aS;

    invoke-direct {v0, p1}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {v0}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v4

    .line 453
    const-string v0, "AppStore"

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    const-string v5, "agoo_release_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 456
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :try_start_1
    const-string v1, "ip"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v1, "port"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v1, "netType"

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v1, "appKey"

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v1, "deviceId"

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v1, "agooReleasetime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    :goto_0
    return-object v0

    .line 463
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 464
    :goto_1
    const-string v2, "getConnectHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/DNSManager;)Lorg/android/agoo/net/channel/ChannelType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    return-object v0
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/DNSManager;Lorg/android/agoo/net/channel/ChannelType;)Lorg/android/agoo/net/channel/ChannelType;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    return-object p1
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 505
    :try_start_0
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 508
    const-string v1, "agoo_dns_errorid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    const-string v1, "agoo_dns_path"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Lorg/android/agoo/net/channel/ChannelType;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/proguard/aU;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 556
    iget-boolean v0, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 560
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->y:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse apoll host["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    iput-boolean v6, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    goto :goto_0

    .line 565
    :cond_1
    :try_start_1
    const-string v0, ":"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 566
    const/4 v2, 0x0

    .line 567
    const/4 v3, -0x1

    .line 568
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 569
    const/4 v1, 0x0

    aget-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    const/16 v3, 0x50

    .line 572
    const/4 v1, 0x1

    :try_start_2
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 576
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->C:Lcom/umeng/message/proguard/aT;

    move-object v1, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/net/channel/DNSManager$IHostHandler;->onHost(Lorg/android/agoo/net/channel/ChannelType;Ljava/lang/String;ILcom/umeng/message/proguard/aT;Ljava/lang/String;)V

    .line 579
    :cond_3
    invoke-virtual {p4, v2}, Lcom/umeng/message/proguard/aU;->g(Ljava/lang/String;)V

    .line 580
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/umeng/message/proguard/aU;->h(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    iput-boolean v6, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    :try_start_4
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->y:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse apoll host["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 585
    iput-boolean v6, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    throw v0

    .line 573
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lorg/android/agoo/net/channel/DNSManager;Lcom/umeng/message/proguard/aU;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->c(Lcom/umeng/message/proguard/aU;)V

    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 494
    const-string v0, "\\|"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 495
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 496
    invoke-direct {p0, v3}, Lorg/android/agoo/net/channel/DNSManager;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 497
    const/4 v0, 0x0

    .line 500
    :cond_0
    return-object v0

    .line 495
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 548
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 551
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 516
    const-string v0, "(2[0-4]\\d)|(25[0-5])"

    .line 517
    const-string v1, "1\\d{2}"

    .line 518
    const-string v2, "[1-9]\\d"

    .line 519
    const-string v3, "\\d"

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")|("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):\\d*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 525
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private final c(Lcom/umeng/message/proguard/aU;)V
    .locals 9

    .prologue
    const/16 v8, 0x190

    .line 210
    .line 213
    :try_start_0
    new-instance v3, Lorg/android/agoo/net/async/RequestParams;

    invoke-direct {v3}, Lorg/android/agoo/net/async/RequestParams;-><init>()V

    .line 214
    const-string v0, "deviceId"

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "app_version_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/android/agoo/net/channel/DNSManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "agoo_version_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/android/agoo/net/channel/DNSManager;->s:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "appkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget v0, p0, Lorg/android/agoo/net/channel/DNSManager;->r:I

    .line 221
    sget-object v1, Lorg/android/agoo/net/channel/DNSManager$1;->a:[I

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->u:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 226
    const-string v0, "%s/%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->m:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "spdyip"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    const/16 v0, 0x50

    move-object v2, v1

    .line 230
    :goto_0
    const-string v1, "DNSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apollUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/umeng/message/proguard/aS;

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 234
    const-string v5, "nt"

    invoke-virtual {v3, v5, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_1
    invoke-virtual {v1}, Lcom/umeng/message/proguard/aS;->b()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    const-string v4, "apn"

    invoke-virtual {v3, v4, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    invoke-direct {p0}, Lorg/android/agoo/net/channel/DNSManager;->a()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 242
    const-string v4, "agoo_operators"

    invoke-virtual {v3, v4, v1}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_3
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 245
    const-string v1, "ttid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/android/agoo/net/channel/DNSManager;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_4
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 248
    const-string v1, "imei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/android/agoo/net/channel/DNSManager;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_5
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 251
    const-string v1, "imsi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/android/agoo/net/channel/DNSManager;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_6
    new-instance v1, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lorg/android/agoo/net/channel/DNSManager;->B:D

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v4, Ljava/math/BigDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    const-string v1, "lac"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/android/agoo/net/channel/DNSManager;->B:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_7
    new-instance v1, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lorg/android/agoo/net/channel/DNSManager;->A:D

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v4, Ljava/math/BigDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 257
    const-string v1, "lat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/android/agoo/net/channel/DNSManager;->A:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/android/agoo/net/async/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_8
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lorg/android/agoo/net/channel/DNSManager;->r:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9

    .line 260
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->n:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 261
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->D:Lorg/android/agoo/net/async/SyncHttpClient;

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/android/agoo/net/async/SyncHttpClient;->get(Landroid/content/Context;Lorg/apache/http/HttpHost;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$a;

    move-result-object v0

    move-object v1, v0

    .line 266
    :goto_1
    if-nez v1, :cond_a

    .line 268
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v2, "dnsRequestError"

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 270
    const-string v2, "faileReasons"

    const-string v3, "result == null"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 273
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 442
    :goto_2
    return-void

    .line 223
    :pswitch_0
    const-string v1, "%s/%s/"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/android/agoo/net/channel/DNSManager;->m:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "activeip"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 224
    goto/16 :goto_0

    .line 263
    :cond_9
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->D:Lorg/android/agoo/net/async/SyncHttpClient;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lorg/android/agoo/net/async/SyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/net/async/RequestParams;)Lorg/android/agoo/net/async/SyncHttpClient$a;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 279
    :cond_a
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->b:Ljava/util/Map;

    .line 280
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 281
    :cond_b
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 282
    const-string v0, "headers==null"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->i(Ljava/lang/String;)V

    .line 284
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 287
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v3, "dnsRequestError"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 289
    const-string v3, "faileReasons"

    const-string v4, "headers==null"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 292
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "headers==null"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v1, "DNSManager"

    const-string v2, "host Throwable"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->x:Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "remote get apoll failed"

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 297
    :cond_c
    :try_start_1
    iget-object v3, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->b:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/umeng/message/proguard/aU;->i(Ljava/lang/String;)V

    .line 298
    const-string v3, "server"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 300
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 301
    const-string v0, "[serverName==null]"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 302
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 303
    const-string v0, "DNSManager"

    const-string v1, "register--->[serverName==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 306
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v3, "dnsRequestError"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 308
    const-string v3, "faileReasons"

    const-string v4, "[serverName==null]"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 311
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "serverName==null"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 316
    :cond_d
    invoke-static {v0}, Lcom/umeng/message/proguard/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 317
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 318
    const-string v0, "[serverName!=wjas]"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 319
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 320
    const-string v0, "DNSManager"

    const-string v1, "register--->[serverName!=wjas]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v3, "dnsRequestError"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 324
    const-string v3, "faileReasons"

    const-string v4, "[serverName!=wjas]"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 326
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 328
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "serverName!=wjas"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 333
    :cond_e
    const/16 v0, 0x12c

    iget v3, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    if-gt v0, v3, :cond_f

    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    if-le v8, v0, :cond_f

    .line 334
    const-string v0, "300<=statusCode<400"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 335
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 336
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 339
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v4, "dnsRequestError"

    invoke-direct {v0, v3, v4}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v3}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 341
    const-string v4, "faileReasons"

    iget v1, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {v0, v3}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 344
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "300<=statusCode<400"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 350
    :cond_f
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    if-gt v8, v0, :cond_10

    const/16 v0, 0x1f4

    iget v3, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    if-le v0, v3, :cond_10

    .line 351
    const-string v0, "400<=statusCode<500"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 352
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 353
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 356
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v4, "dnsRequestError"

    invoke-direct {v0, v3, v4}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v3}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 358
    const-string v4, "faileReasons"

    iget v1, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {v0, v3}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 361
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "400<=statusCode<500"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->z:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 366
    :cond_10
    const/16 v0, 0xc8

    iget v3, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    if-eq v0, v3, :cond_11

    .line 367
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 368
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 369
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 372
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v4, "dnsRequestError"

    invoke-direct {v0, v3, v4}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v3}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 374
    const-string v4, "faileReasons"

    iget v5, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v0, v3}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 377
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    iget v1, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->z:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 382
    :cond_11
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 383
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 384
    const-string v0, "responseBody is null"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 385
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 388
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v3, "dnsRequestError"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 390
    const-string v3, "faileReasons"

    const-string v4, "responseBody is null"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 393
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "responseBody is null"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 398
    :cond_12
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/android/agoo/net/channel/DNSManager;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 399
    if-eqz v3, :cond_13

    array-length v0, v3

    if-gtz v0, :cond_14

    .line 400
    :cond_13
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 401
    const-string v0, "ips==null"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->f(Ljava/lang/String;)V

    .line 402
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V

    .line 405
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v1, "ips==null"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v3, "dnsRequestError"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 409
    const-string v3, "faileReasons"

    const-string v4, "ips==null"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 411
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 415
    :cond_14
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->u:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    .line 416
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->b:Ljava/util/Map;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->b:Ljava/util/Map;

    const-string v2, "spdy"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 419
    sget-object v0, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    iput-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    .line 421
    :cond_15
    const-string v0, "DNSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " initChannel["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->u:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/ChannelType;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]--> resultChannel["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/ChannelType;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->j(Ljava/lang/String;)V

    .line 425
    iget-object v0, v1, Lorg/android/agoo/net/async/SyncHttpClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->k(Ljava/lang/String;)V

    .line 426
    const-string v0, "y"

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->e(Ljava/lang/String;)V

    .line 428
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v2, "dnsRequestSuccess"

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 430
    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 432
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {p0, v3, v0}, Lorg/android/agoo/net/channel/DNSManager;->a([Ljava/lang/String;Lorg/android/agoo/net/channel/ChannelType;)V

    .line 434
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->v:Lorg/android/agoo/net/channel/ChannelType;

    const/4 v1, 0x0

    aget-object v1, v3, v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/DNSManager;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelType;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/proguard/aU;)V

    .line 435
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/channel/DNSManager;->b(Lcom/umeng/message/proguard/aU;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->n:Ljava/lang/String;

    .line 111
    iput p2, p0, Lorg/android/agoo/net/channel/DNSManager;->r:I

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 90
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/android/agoo/net/channel/DNSManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->o:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/android/agoo/net/channel/DNSManager;->p:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/android/agoo/net/channel/DNSManager;->q:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->m:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/android/agoo/net/channel/DNSManager;->k:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/android/agoo/net/channel/DNSManager;->l:Ljava/lang/String;

    .line 98
    iput-wide p4, p0, Lorg/android/agoo/net/channel/DNSManager;->s:J

    .line 99
    return-void
.end method

.method public final a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-boolean v0, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 594
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    invoke-interface {v0, p1, p2}, Lorg/android/agoo/net/channel/DNSManager$IHostHandler;->onFailure(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_1
    iput-boolean v1, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 600
    iput-boolean v1, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    throw v0
.end method

.method public final a(Lorg/android/agoo/net/channel/ChannelType;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->u:Lorg/android/agoo/net/channel/ChannelType;

    .line 86
    return-void
.end method

.method public final a(Lorg/android/agoo/net/channel/ChannelType;Lcom/umeng/message/proguard/aT;)V
    .locals 3

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "DNSManager"

    const-string v1, "DNSRemote[runing....]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-object p2, p0, Lorg/android/agoo/net/channel/DNSManager;->C:Lcom/umeng/message/proguard/aT;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/net/channel/DNSManager;->y:Z

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->z:Lorg/android/agoo/net/channel/DNSManager$a;

    invoke-virtual {v0, p1}, Lorg/android/agoo/net/channel/DNSManager$a;->a(Lorg/android/agoo/net/channel/ChannelType;)V

    .line 124
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->z:Lorg/android/agoo/net/channel/DNSManager$a;

    const-string v2, "agoo-dns"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->s:Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "thread target  failed"

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lorg/android/agoo/net/channel/DNSManager$IHostHandler;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    .line 82
    return-void
.end method

.method final a([Ljava/lang/String;Lorg/android/agoo/net/channel/ChannelType;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 473
    .line 474
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v2, "AGOO_HOST"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 476
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 477
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 478
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 479
    aget-object v4, p1, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGOO_HOST_VALUE_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_1
    const-string v1, "AGOO_HOST_TYPE"

    invoke-virtual {p2}, Lorg/android/agoo/net/channel/ChannelType;->getValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string v1, "AGOO_HOST_SIZE"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_1
    return-void

    .line 488
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final a(Lcom/umeng/message/proguard/aU;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 180
    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->w:Landroid/content/Context;

    const-string v2, "AGOO_HOST"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    const-string v2, "AGOO_HOST_SIZE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 185
    if-lez v2, :cond_0

    iget v3, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I

    if-ge v3, v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGOO_HOST_VALUE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v3, "AGOO_HOST_TYPE"

    sget-object v4, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/ChannelType;->getValue()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lorg/android/agoo/net/channel/ChannelType;->get(I)Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v3

    .line 190
    const-string v4, "DNSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshLocalHost,mHostIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGOO_HOST_VALUE_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    iget-object v1, p0, Lorg/android/agoo/net/channel/DNSManager;->l:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1, p1}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelType;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/proguard/aU;)V

    .line 196
    const/4 v0, 0x1

    .line 197
    iget v1, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/android/agoo/net/channel/DNSManager;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->s:Lorg/android/agoo/net/channel/ChannelError;

    const-string v2, "refresh failed"

    invoke-virtual {p0, v1, v2}, Lorg/android/agoo/net/channel/DNSManager;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/umeng/message/proguard/aU;)V
    .locals 1

    .prologue
    .line 606
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/android/agoo/net/channel/DNSManager;->t:Lorg/android/agoo/net/channel/DNSManager$IHostHandler;

    invoke-interface {v0, p1}, Lorg/android/agoo/net/channel/DNSManager$IHostHandler;->onReportDNS(Lcom/umeng/message/proguard/aU;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v0

    goto :goto_0
.end method
